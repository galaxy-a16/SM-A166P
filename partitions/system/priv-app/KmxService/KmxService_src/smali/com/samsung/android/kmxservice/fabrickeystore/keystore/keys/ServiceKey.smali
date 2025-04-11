.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;
.super Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/SymmetricKey;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceKey"


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/SymmetricKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->createSymmetricKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public decrypt(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ParcelFileDescriptorUtil;->pipeTo(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;[BZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->decrypt(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[B)Z

    move-result p0

    return p0
.end method

.method public decrypt([B)[B
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    invoke-virtual {v0, v1, p1, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->decrypt(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    const/4 v1, 0x1

    invoke-static {v0, p1, p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ParcelFileDescriptorUtil;->pipeTo(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;[BZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->encrypt(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[B)Z

    move-result p0

    return p0
.end method

.method public encrypt([B)[B
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    invoke-virtual {v0, v1, p1, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->encrypt(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public exportKey(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    invoke-virtual {v0, v1, p1, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->exportWrappedKey(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public exportKey([Ljava/security/cert/X509Certificate;Z)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->getLeafCert([Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->exportWrappedKey(Ljava/lang/String;Ljava/security/PublicKey;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public importKey(Ljava/lang/Object;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[B)Z"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->importWrappedKey(Ljava/lang/String;Ljava/lang/String;[B[B)Z

    move-result p0

    return p0
.end method
