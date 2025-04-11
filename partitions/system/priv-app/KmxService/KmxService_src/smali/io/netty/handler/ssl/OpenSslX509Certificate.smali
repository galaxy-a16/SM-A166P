.class final Lio/netty/handler/ssl/OpenSslX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "SourceFile"


# instance fields
.field private final bytes:[B

.field private wrapped:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslX509Certificate;->bytes:[B

    return-void
.end method

.method private unwrap()Ljava/security/cert/X509Certificate;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/SslContext;->X509_CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslX509Certificate;->bytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public getBasicConstraints()I
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p0

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslX509Certificate;->bytes:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public getIssuerUniqueID()[Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    move-result-object p0

    return-object p0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    return-object p0
.end method

.method public getKeyUsage()[Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/cert/X509Extension;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object p0

    return-object p0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectUniqueID()[Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    move-result-object p0

    return-object p0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    return-object p0
.end method

.method public getTBSCertificate()[B
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result p0

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/cert/X509Extension;->hasUnsupportedCriticalExtension()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslX509Certificate;->unwrap()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    return-void
.end method
