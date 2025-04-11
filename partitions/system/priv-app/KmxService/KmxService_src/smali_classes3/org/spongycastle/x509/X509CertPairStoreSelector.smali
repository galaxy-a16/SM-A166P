.class public Lorg/spongycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private certPair:Lorg/spongycastle/x509/X509CertificatePair;

.field private forwardSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

.field private reverseSelector:Lorg/spongycastle/x509/X509CertStoreSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/spongycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509CertPairStoreSelector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/spongycastle/x509/X509CertificatePair;

    iput-object v1, v0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/spongycastle/x509/X509CertificatePair;

    iget-object v1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, p0}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    :cond_1
    return-object v0
.end method

.method public getCertPair()Lorg/spongycastle/x509/X509CertificatePair;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/spongycastle/x509/X509CertificatePair;

    return-object p0
.end method

.method public getForwardSelector()Lorg/spongycastle/x509/X509CertStoreSelector;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    return-object p0
.end method

.method public getReverseSelector()Lorg/spongycastle/x509/X509CertStoreSelector;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    return-object p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lorg/spongycastle/x509/X509CertificatePair;

    if-nez v1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/spongycastle/x509/X509CertificatePair;

    iget-object v2, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/spongycastle/x509/X509CertificatePair;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lorg/spongycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public setCertPair(Lorg/spongycastle/x509/X509CertificatePair;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/spongycastle/x509/X509CertificatePair;

    return-void
.end method

.method public setForwardSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    return-void
.end method

.method public setReverseSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/spongycastle/x509/X509CertStoreSelector;

    return-void
.end method
