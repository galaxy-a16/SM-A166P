.class final Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/jcajce/JcaJceUtils;->getCertPathTrustManager(Ljava/util/Set;[Ljava/security/cert/CRL;)[Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$anchors:Ljava/util/Set;

.field final synthetic val$revocationLists:[Ljava/security/cert/CRL;

.field final synthetic val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/util/Set;[Ljava/security/cert/CRL;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$anchors:Ljava/util/Set;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6

    const-string p2, "BC"

    const-string v0, "Collection"

    :try_start_0
    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, p2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v1

    const-string v2, "PKIX"

    invoke-static {v2, p2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object p2

    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    new-instance v4, Ljava/security/cert/PKIXBuilderParameters;

    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$anchors:Ljava/util/Set;

    invoke-direct {v4, v5, v2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    invoke-virtual {v4, v1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    iget-object p0, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    :goto_0
    invoke-virtual {p2, v4}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object p0

    check-cast p0, Ljava/security/cert/PKIXCertPathValidatorResult;

    aget-object p0, p1, v3

    invoke-static {p0}, Lorg/bouncycastle/est/jcajce/JcaJceUtils;->validateServerCertUsage(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to process certificates: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lorg/bouncycastle/cert/a;->e(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    array-length v0, p0

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
