.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;
.super Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AsymmetricKey;
.source "SourceFile"


# static fields
.field public static final PREFIX_LINK_KEY:Ljava/lang/String; = "LINK_KEY_"

.field private static final TAG:Ljava/lang/String; = "LinkKey"


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "LINK_KEY_"

    invoke-static {v0, p3}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AsymmetricKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create()Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public create([BLjava/lang/String;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->created()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->keyAgreement([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createWithPQdecap([BLjava/lang/String;[BLjava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->created()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->keyAgreementWithPQdecap([BLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createWithPQencap([BLjava/lang/String;[B)[B
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->created()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->keyAgreementWithPQencap([BLjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public created()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->existKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->removeKey(Ljava/lang/String;)Z

    return-void
.end method
