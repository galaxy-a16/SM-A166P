.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;
.super Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AsymmetricKey;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ATTEST_KEY_ID:Ljava/lang/String; = "ATTEST_KEY_ID"


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->getKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AsymmetricKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "ATTEST_KEY_ID"

    :cond_0
    return-object p0
.end method


# virtual methods
.method public create()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    const-string v1, "Challenge"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->generateAttestKeyPair(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public generateChainSignature([B)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->generateSignature(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public generateSignature(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getMemberVerificationInfo(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->generateSignature(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSakUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getAttestatedCertParser([Ljava/security/cert/X509Certificate;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getSakUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->removeAttestKey(Ljava/lang/String;)V

    return-void
.end method
