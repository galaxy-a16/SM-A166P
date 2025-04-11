.class public Lorg/spongycastle/openssl/X509TrustedCertificateBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final certificateHolder:Lorg/spongycastle/cert/X509CertificateHolder;

.field private final trustBlock:Lorg/spongycastle/openssl/CertificateTrustBlock;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/X509CertificateHolder;Lorg/spongycastle/openssl/CertificateTrustBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    iput-object p2, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/spongycastle/openssl/CertificateTrustBlock;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    new-instance p1, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/spongycastle/cert/X509CertificateHolder;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    new-instance p1, Lorg/spongycastle/openssl/CertificateTrustBlock;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/spongycastle/openssl/CertificateTrustBlock;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/spongycastle/openssl/CertificateTrustBlock;

    return-void
.end method


# virtual methods
.method public getCertificateHolder()Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/spongycastle/openssl/CertificateTrustBlock;

    invoke-virtual {p0}, Lorg/spongycastle/openssl/CertificateTrustBlock;->toASN1Sequence()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getTrustBlock()Lorg/spongycastle/openssl/CertificateTrustBlock;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/spongycastle/openssl/CertificateTrustBlock;

    return-object p0
.end method
