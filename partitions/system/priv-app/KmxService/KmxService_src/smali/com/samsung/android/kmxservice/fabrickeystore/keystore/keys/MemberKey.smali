.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;
.super Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AsymmetricKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AsymmetricKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->generateKeyPair(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->getDevicePublicKey(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getAsn1MemberKey([B)Ljava/security/PublicKey;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
