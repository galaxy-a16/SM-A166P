.class public Lorg/bouncycastle/openssl/PEMParser;
.super Lorg/bouncycastle/util/io/pem/PemReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$ECCurveParamsParser;,
        Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$EncryptedPrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;,
        Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;,
        Lorg/bouncycastle/openssl/PEMParser$PrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMParser$RSAPublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509CRLParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;,
        Lorg/bouncycastle/openssl/PEMParser$X509TrustedCertificateParser;
    }
.end annotation


# instance fields
.field private final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "CERTIFICATE REQUEST"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "NEW CERTIFICATE REQUEST"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$X509TrustedCertificateParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$X509TrustedCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "TRUSTED CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "X509 CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$X509CRLParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$X509CRLParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "X509 CRL"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "PKCS7"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "CMS"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "ATTRIBUTE CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$ECCurveParamsParser;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$ECCurveParamsParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    const-string v2, "EC PARAMETERS"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    const-string v2, "PUBLIC KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$RSAPublicKeyParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openssl/PEMParser$RSAPublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    const-string v2, "RSA PUBLIC KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;

    new-instance v2, Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$RSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMKeyPairParser;)V

    const-string v2, "RSA PRIVATE KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;

    new-instance v2, Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$DSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMKeyPairParser;)V

    const-string v2, "DSA PRIVATE KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;

    new-instance v2, Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/openssl/PEMParser$ECDSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMKeyPairParser;)V

    const-string v1, "EC PRIVATE KEY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$EncryptedPrivateKeyParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openssl/PEMParser$EncryptedPrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    const-string v1, "ENCRYPTED PRIVATE KEY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser$PrivateKeyParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openssl/PEMParser$PrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    const-string p0, "PRIVATE KEY"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/util/io/pem/PemReader;->readPemObject()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/openssl/PEMParser;->parsers:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/util/io/pem/PemObjectParser;

    invoke-interface {p0, v0}, Lorg/bouncycastle/util/io/pem/PemObjectParser;->parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unrecognised object: "

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
