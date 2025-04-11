.class public Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;
.super Lorg/spongycastle/cert/crmf/CertificateRequestMessage;
.source "SourceFile"


# instance fields
.field private helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V

    new-instance p1, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cert/crmf/CertificateRequestMessage;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->toASN1Structure()Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;-><init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;-><init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    invoke-virtual {p0, v0}, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;->toPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    invoke-virtual {p0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to construct DER encoding of name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/cert/crmf/jcajce/JcaCertificateRequestMessage;->helper:Lorg/spongycastle/cert/crmf/jcajce/CRMFHelper;

    return-object p0
.end method
