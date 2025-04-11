.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALGORITHM_SIGN:Ljava/lang/String; = "SHA256withECDSA"

.field private static final ANDROID_DEVICE_CERT:I = 0x2

.field public static final CHALLENGE:Ljava/lang/String; = "Challenge"

.field public static final LEAF_CERTIFICATE_INDEX:I = 0x0

.field private static final LEN_OCF_CERTIFICATE_CHAIN:I = 0x2

.field private static final LEN_SAK_CERTIFICATE_CHAIN:I = 0x2

.field private static final LEN_SCLOUD_CERTIFICATE_CHAIN:I = 0x1

.field private static final NONE_DEVICE_CERT:I = 0x0

.field private static final OCF_ROOT_FILENAME:Ljava/lang/String; = "certs/Samsung_OCF_RootCA.pem"

.field public static final SAK_CERTIFICATION_INDEX:I = 0x1

.field private static final SAK_V1_FILENAME:Ljava/lang/String; = "certs/rootsakv1.pem"

.field private static final SAK_V2_FILENAME:Ljava/lang/String; = "certs/rootsakv2.pem"

.field private static final SAKm_V1_FILENAME:Ljava/lang/String; = "certs/rootsakmv1.pem"

.field private static final SAMSUNG_CLOUD_CERT:I = 0x3

.field private static final SAMSUNG_CLOUD_ROOT_FILENAME:Ljava/lang/String; = "certs/samsung-cloud-root-ca.crt"

.field private static final SecurityLevel_TRUSTED_ENVIRONMENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FabricCertUtil"

.field private static final TIZEN_DEVICE_CERT:I = 0x1

.field private static final VALID_CERT_CHAIN_SIZE:I = 0x3

.field private static final VERSION_SAK_V1:Ljava/lang/String; = "SAK_V1"

.field private static final VERSION_SAK_V2:Ljava/lang/String; = "SAK_V2"

.field private static final VERSION_SAKm_V1:Ljava/lang/String; = "SAKmV1"

.field public static final X509_FOOTER:Ljava/lang/String; = "\n-----END CERTIFICATE-----\n"

.field public static final X509_HEADER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIntegrityStatus(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static checkKeyOrigin(I)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string v0, "The key was not generated in hardware-backed keystore"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static checkRootOfTrust(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static checkSecurityLevel(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Security Level("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is lower than TRUSTED_ENVIRONMENT"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static decodePublicKey([B)Ljava/security/PublicKey;
    .locals 2

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateSignature(Ljava/lang/String;[B)[B
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricAttestation;

    invoke-direct {v0, p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;-><init>(Ljava/lang/String;)V

    const-string v1, "SHA256withECDSA"

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->getSignatureInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->initSign()V

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->update([B)V

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricAttestation$Signature;->sign()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateSignature null, alias : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAttestatedCertParser([Ljava/security/cert/X509Certificate;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getLeafCert([Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public static getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 5

    const-string v0, "getCertificateChain size error, alias : "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/security/fabric/crypto/FabricAttestation;

    invoke-direct {v2, p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCertificateChain error, alias : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getCertificateFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getChallengeOfAttestationCert(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;[B)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getChallenge()[B

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v2, p0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Challenge in different with certificate : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "No challenge in the certificate"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getChallengeOfSamsungCloudCert(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;[B)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;->getChallenge()[B

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v2, p0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Challenge in different with certificate : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "No challenge in the certificate"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getDeviceIssuer(Ljava/security/Principal;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string v1, "Device cert issuer is null"

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p0, v0

    const-string v3, "CN=Samsung Electronics OCF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v3, "CN=Samsung Cloud"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method public static getLeafCert([Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid certification chain size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "x509Certs is null"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMemberVerificationInfo(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMemberVerificationInfo error, fabricID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " memberID : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOcfRoot(Landroid/content/Context;)Ljava/security/cert/X509Certificate;
    .locals 1

    const-string v0, "certs/Samsung_OCF_RootCA.pem"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getCertificateFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method private static getSCloudRoot(Landroid/content/Context;)Ljava/security/cert/X509Certificate;
    .locals 1

    const-string v0, "certs/samsung-cloud-root-ca.crt"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getCertificateFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method private static getSakRoot(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    const-string v0, "invalid sakUID : "

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    const-string v1, "SAK_V1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "certs/rootsakv1.pem"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getCertificateFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v1, "SAK_V2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "certs/rootsakv2.pem"

    goto :goto_0

    :cond_1
    const-string v1, "SAKmV1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "certs/rootsakmv1.pem"

    goto :goto_0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string v0, "Occurred exception error while checking root cert of SAK"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "sakUID is empty"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSamsungCloudCertParser([Ljava/security/cert/X509Certificate;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getLeafCert([Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;-><init>(Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public static verifyCertChain(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "verifyMemberKey certs is null "

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "verifyMemberKey cert in certs is null "

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getLeafCert([Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getDeviceIssuer(Ljava/security/Principal;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChainForAndroid(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z

    move-result p0

    return p0

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChainForTizen(Landroid/content/Context;[Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChainFromCloud(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "Not defined tizen verifyMemberKey spec"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p2, "Certificate Parsing Error for Verifying Device Cert : "

    invoke-static {p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static verifyCertChainForAndroid(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getAttestatedCertParser([Ljava/security/cert/X509Certificate;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Certificate Length: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {v1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getChallengeOfAttestationCert(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;[B)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getOrigin()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->checkKeyOrigin(I)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getRootOfTrust()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->checkRootOfTrust(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getSecurityLevel()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->checkSecurityLevel(I)Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getIngetrityStatus()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->checkIntegrityStatus(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;)Z

    move-result p2

    if-nez p2, :cond_5

    return v0

    :cond_5
    sget-object p2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OS Patch Level : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getOsPatchLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Vendor Patch Level : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getVendorPatchLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Boot Patch Level : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getBootPatchLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getSakUID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getSakRoot(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChainFromRoot(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result p0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return v0

    :catch_1
    move-exception p0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p2, "Certificate Parsing Error : "

    invoke-static {p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static verifyCertChainForTizen(Landroid/content/Context;[Ljava/security/cert/X509Certificate;)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Certificate Length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getOcfRoot(Landroid/content/Context;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChainFromRoot(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private static verifyCertChainFromCloud(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getSamsungCloudCertParser([Ljava/security/cert/X509Certificate;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Certificate Length: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {v1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getChallengeOfSamsungCloudCert(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/SamsungCloudCertParser;[B)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getSCloudRoot(Landroid/content/Context;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChainFromRoot(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p2, "Certificate Parsing Error : "

    invoke-static {p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static verifyCertChainFromRoot(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "Root cert is null for verifying cert chain"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    move-object p0, v3

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static verifyChainSigningKey(Landroid/content/Context;[Ljava/security/cert/X509Certificate;)Z
    .locals 2

    const-string v0, "Challenge"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChain(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z

    move-result p0

    return p0
.end method

.method public static verifyMemberKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "verifyMemberKey certs is null "

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    array-length v1, p5

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p5, v2

    if-nez v3, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "verifyMemberKey cert in certs is null "

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p5}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getLeafCert([Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getDeviceIssuer(Ljava/security/Principal;)I

    move-result v2

    const-string v3, "Challenge"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {p0, p5, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChain(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-static {p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getMemberVerificationInfo(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifySignature([B[B[B)Z

    move-result p0

    return p0

    :cond_4
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "Not defined android verifyMemberKey spec"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p0, 0x1

    if-ne v2, p0, :cond_7

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    invoke-static {p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getMemberVerificationInfo(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifySignature([B[B[B)Z

    move-result p0

    return p0

    :cond_6
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "Not defined tizen verifyMemberKey spec"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "Not defined device cert issuer"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p2, "Certificate Parsing Error for Verifying Device Cert : "

    invoke-static {p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static verifySignature([B[B[B)Z
    .locals 1

    :try_start_0
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->TAG:Ljava/lang/String;

    const-string p1, "verifySignature error"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
