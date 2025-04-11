.class public Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PKIMessage not protected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;->hasProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;->toASN1Structure()Lorg/bouncycastle/asn1/cmp/PKIMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PKIMessage not protected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifySignature([BLorg/bouncycastle/operator/ContentVerifier;)Z
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2, p1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object p0

    return-object p0
.end method

.method public getCertificates()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 4

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getExtraCerts()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object p0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getX509v3PKCert()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object p0

    return-object p0
.end method

.method public hasPasswordBasedMacProtection()Z
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-object p0
.end method

.method public verify(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PBMParameter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->setParameters(Lorg/bouncycastle/asn1/cmp/PBMParameter;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getProtection()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to verify MAC: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p2}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lorg/bouncycastle/cert/cmp/CMPException;

    const-string p1, "protection algorithm not mac based"

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verify(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getProtection()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->verifySignature([BLorg/bouncycastle/operator/ContentVerifier;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to verify signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
