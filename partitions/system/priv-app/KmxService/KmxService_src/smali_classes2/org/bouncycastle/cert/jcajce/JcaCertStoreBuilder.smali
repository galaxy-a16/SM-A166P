.class public Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certificateConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

.field private certs:Ljava/util/List;

.field private crlConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

.field private crls:Ljava/util/List;

.field private provider:Ljava/lang/Object;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    const-string v0, "Collection"

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    return-void
.end method

.method private convertHolders(Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;)Ljava/security/cert/CollectionCertStoreParameters;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->getCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Ljava/security/cert/X509CRL;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {p0, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public addCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCRLs(Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCertificates(Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Ljava/security/cert/CertStore;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    iget-object v1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->convertHolders(Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;)Ljava/security/cert/CollectionCertStoreParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->provider:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v2, v1, Ljava/security/Provider;

    iget-object p0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/security/Provider;

    invoke-static {p0, v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object p0

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->provider:Ljava/lang/Object;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->provider:Ljava/lang/Object;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    return-object p0
.end method
