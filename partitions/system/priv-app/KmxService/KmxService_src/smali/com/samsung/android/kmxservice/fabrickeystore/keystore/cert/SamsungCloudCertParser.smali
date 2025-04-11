.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHALLENGE_PASSWORD_OID:Ljava/lang/String; = "1.2.840.113549.1.9.7"


# instance fields
.field private final mChallenge:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;->getAttestationEncodable(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;->mChallenge:[B

    return-void
.end method

.method private getAttestationEncodable(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    const-string p0, "1.2.840.113549.1.9.7"

    invoke-interface {p1, p0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getAsn1EncodableFromBytes([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string p1, "Did not find extension with OID 1.2.840.113549.1.9.7"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChallenge()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;->mChallenge:[B

    return-object p0
.end method
