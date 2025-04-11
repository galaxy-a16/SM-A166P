.class public Lorg/spongycastle/cert/cmp/RevocationDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private revDetails:Lorg/spongycastle/asn1/cmp/RevDetails;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cmp/RevDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/spongycastle/asn1/cmp/RevDetails;

    return-void
.end method


# virtual methods
.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/spongycastle/asn1/cmp/RevDetails;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/RevDetails;->getCertDetails()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/spongycastle/asn1/cmp/RevDetails;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/RevDetails;->getCertDetails()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/spongycastle/asn1/cmp/RevDetails;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/RevDetails;->getCertDetails()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/cmp/RevDetails;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/RevocationDetails;->revDetails:Lorg/spongycastle/asn1/cmp/RevDetails;

    return-object p0
.end method
