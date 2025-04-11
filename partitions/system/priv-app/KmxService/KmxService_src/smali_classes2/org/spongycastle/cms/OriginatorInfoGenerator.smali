.class public Lorg/spongycastle/cms/OriginatorInfoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final origCRLs:Ljava/util/List;

.field private final origCerts:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/X509CertificateHolder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/util/Store;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cms/OriginatorInfoGenerator;-><init>(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/spongycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/cms/OriginatorInformation;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/cms/OriginatorInformation;

    new-instance v1, Lorg/spongycastle/asn1/cms/OriginatorInfo;

    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {v2}, Lorg/spongycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iget-object p0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    invoke-static {p0}, Lorg/spongycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/OriginatorInformation;-><init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/cms/OriginatorInformation;

    new-instance v1, Lorg/spongycastle/asn1/cms/OriginatorInfo;

    iget-object p0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {p0}, Lorg/spongycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/OriginatorInformation;-><init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;)V

    return-object v0
.end method
