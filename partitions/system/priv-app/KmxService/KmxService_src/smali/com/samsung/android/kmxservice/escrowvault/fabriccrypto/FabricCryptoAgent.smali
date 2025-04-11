.class public Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|FabricCryptoAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decryptData([B)[B
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSaltDecrypt([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deleteCredential(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evDelete(Ljava/lang/String;)Z

    return-void
.end method

.method public deleteEvKey()Z
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKey()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evDeleteKey()Z

    move-result p0

    return p0
.end method

.method public encryptData([B)[B
    .locals 2

    new-instance p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;-><init>()V

    :try_start_0
    const-string v0, "ev2_rk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->encrypt(Ljava/lang/String;[B[B)[B

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, -0xc

    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    array-length v0, p0

    add-int/lit8 v0, v0, -0xc

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [[B

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public exportCek([B[B[BLcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/cert/Certificate;)Landroid/os/Bundle;
    .locals 8

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p5, v7, v0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVSW()[B

    move-result-object v5

    invoke-virtual {p4}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignEVSW()[B

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evRegistKey([B[B[B[B[B[Ljava/security/cert/Certificate;)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "KMX|FabricCryptoAgent"

    const-string p1, "fail to get CERK info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p2, "ecerk"

    iget-object p3, p1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->eCeRk:[B

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "sign_ecerk"

    iget-object p3, p1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->signEceRk:[B

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "evs"

    iget-object p1, p1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->eVS:[B

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public exportClientCredential(Ljava/lang/String;[Ljava/security/cert/Certificate;Z)[B
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "exportClientCredential SHA256 : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KMX|FabricCryptoAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x20000005

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x200000cb

    invoke-static {v0, p0}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evExportCred(Ljava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Collection;)[B

    move-result-object p0

    return-object p0
.end method

.method public exportCredential(Ljava/lang/String;)[B
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    const-string v0, "ev2_cek"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evExportCred(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public generateEVKey()Z
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGenerateKey()Z

    move-result p0

    return p0
.end method

.method public generateVSWInfo([B[BLjava/lang/String;[B)Landroid/os/Bundle;
    .locals 6

    const-string p0, "KMX|FabricCryptoAgent"

    const-string v0, "generateVSWInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Password"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "Pattern"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string v2, "PIN"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p3, "3"

    goto :goto_1

    :pswitch_1
    const-string p3, "2"

    goto :goto_1

    :pswitch_2
    const-string p3, "1"

    :goto_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :goto_2
    const/4 p3, 0x4

    new-array p3, p3, [[B

    aput-object p1, p3, v4

    aput-object p2, p3, v0

    aput-object v1, p3, v3

    const/4 p1, 0x3

    aput-object p4, p3, p1

    invoke-static {p3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object p1

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGenerateVsw([B)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    move-result-object p1

    iget-object p2, p1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->eVSW:[B

    const-string p3, "evsw"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "sign_evsw"

    iget-object p1, p1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->signEvsw:[B

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x13575 -> :sswitch_2
        0x34118370 -> :sswitch_1
        0x4c641ebb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChallenge()[B
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetChallenge()[B

    move-result-object p0

    return-object p0
.end method

.method public importCek([B[B[B[B[BLjava/lang/String;)Z
    .locals 7

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/security/cert/X509Certificate;

    const/4 p0, 0x0

    invoke-static {p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p6

    aput-object p6, v6, p0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evRecoveryKey([B[B[B[B[B[Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public importClientCredential(Ljava/lang/String;[B[B[B[Ljava/security/cert/Certificate;)Z
    .locals 6

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evDelete(Ljava/lang/String;)Z

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evImportCred([BLjava/lang/String;[B[B[Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public importRecoveredCredential(Ljava/lang/String;[B[B[B[B[BLjava/security/cert/X509Certificate;)Z
    .locals 8

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/security/cert/Certificate;

    const/4 p0, 0x0

    aput-object p7, v7, p0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evRecoveryCred(Ljava/lang/String;[B[B[B[B[B[Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public isExistCek()Z
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKey()Z

    move-result p0

    return p0
.end method

.method public requestTASignCert()[Ljava/security/cert/Certificate;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetSignCert()[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetSAKCert()Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public requestTaEncKeyAndSignature()Landroid/os/Bundle;
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKeypair()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGenerateKeyPair()Z

    :cond_0
    const-string v1, "public_key"

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaEncPubKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "public_key_signature"

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaEncPubKeySig()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public signCred([B)[B
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSignData([B)[B

    move-result-object p0

    return-object p0
.end method

.method public signCredWithSha512([B)[B
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaSignPrivKeyHandle()Ljava/security/PrivateKey;

    move-result-object v0

    :try_start_0
    const-string v1, "SHA512withECDSA"

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSign(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
