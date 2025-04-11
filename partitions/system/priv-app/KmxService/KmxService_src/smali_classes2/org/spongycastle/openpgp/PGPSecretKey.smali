.class public Lorg/spongycastle/openpgp/PGPSecretKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field pub:Lorg/spongycastle/openpgp/PGPPublicKey;

.field secret:Lorg/spongycastle/bcpg/SecretKeyPacket;


# direct methods
.method public constructor <init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 9

    .line 1
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 8

    .line 2
    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/openpgp/PGPSecretKey;->certifiedPublicKey(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p4

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ZLorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 6

    .line 4
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ZLorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ZLorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-static {p4, p1, p2, p5, p3}, Lorg/spongycastle/openpgp/PGPSecretKey;->buildSecretKeyPacket(ZLorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)Lorg/spongycastle/bcpg/SecretKeyPacket;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    return-void
.end method

.method private static buildSecretKeyPacket(ZLorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)Lorg/spongycastle/bcpg/SecretKeyPacket;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/bcpg/BCPGObject;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    new-instance v1, Lorg/spongycastle/bcpg/SecretKeyPacket;

    iget-object v6, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v4, [B

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    iget-object v12, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v0, v4, [B

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v6, v5}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v2, v3, v7}, Lorg/spongycastle/openpgp/PGPSecretKey;->checksum(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v3

    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    if-eqz v8, :cond_6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([BII)[B

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v10

    if-eqz v2, :cond_4

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/16 v1, 0xfe

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "only SHA1 supported for key checksum calculations."

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0xff

    :goto_1
    move v9, v1

    if-eqz p0, :cond_5

    new-instance v1, Lorg/spongycastle/bcpg/SecretKeyPacket;

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_5
    new-instance v1, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_6
    if-eqz p0, :cond_7

    new-instance v1, Lorg/spongycastle/bcpg/SecretKeyPacket;

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_7
    new-instance v1, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    const-string v2, "Exception encrypting key"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method private static certifiedPublicKey(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;

    invoke-direct {v0, p5}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p5

    invoke-virtual {v0, p0, p5}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {v0, p3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    invoke-virtual {v0, p4}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setUnhashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    :try_start_1
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generateCertification(Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->addCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPSignature;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "exception doing certification: "

    invoke-static {p2, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "creating signature generator: "

    invoke-static {p2, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static checksum(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;[BI)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "checksum digest calculation failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    move p0, v0

    move v1, p0

    :goto_0
    if-eq p0, p2, :cond_1

    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [B

    shr-int/lit8 p1, v1, 0x8

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    int-to-byte p1, v1

    const/4 p2, 0x1

    aput-byte p1, p0, p2

    return-object p0
.end method

.method public static copyWithNewPassword(Lorg/spongycastle/openpgp/PGPSecretKey;Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct/range {p0 .. p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->extractKeyData(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)[B

    move-result-object v8

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v1

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_6

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v11, 0xff

    if-nez v1, :cond_1

    move v12, v11

    goto :goto_0

    :cond_1
    move v12, v1

    :goto_0
    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v1

    const/4 v13, 0x4

    if-ge v1, v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getKey()[B

    move-result-object v14

    array-length v1, v8

    new-array v15, v1, [B

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getHashAlgorithm()I

    move-result v1

    if-ne v1, v9, :cond_4

    move-object v6, v2

    move v5, v10

    move/from16 v16, v5

    :goto_1
    if-eq v5, v13, :cond_3

    aget-byte v1, v8, v16

    shl-int/lit8 v2, v1, 0x8

    add-int/lit8 v3, v16, 0x1

    aget-byte v4, v8, v3

    and-int/2addr v4, v11

    or-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v4, v2, 0x8

    aput-byte v1, v15, v16

    aget-byte v1, v8, v3

    aput-byte v1, v15, v3

    if-nez v5, :cond_2

    add-int/lit8 v1, v16, 0x2

    invoke-virtual {v7, v14, v8, v1, v4}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[BII)[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v6

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_2

    :cond_2
    array-length v1, v6

    new-array v3, v1, [B

    array-length v2, v6

    sub-int v2, v16, v2

    invoke-static {v15, v2, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v16, 0x2

    move-object/from16 v1, p2

    move-object v2, v14

    move/from16 v18, v4

    move-object v4, v8

    move/from16 v19, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[B[BII)[B

    move-result-object v1

    move-object/from16 v6, v17

    :goto_2
    add-int/lit8 v2, v16, 0x2

    array-length v3, v1

    invoke-static {v1, v10, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v18, 0x2

    add-int v16, v4, v16

    add-int/lit8 v5, v19, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v17, v6

    aget-byte v1, v8, v16

    aput-byte v1, v15, v16

    add-int/lit8 v16, v16, 0x1

    aget-byte v1, v8, v16

    aput-byte v1, v15, v16

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v10

    move v13, v10

    move v14, v12

    move-object/from16 v16, v17

    move-object/from16 v17, v15

    move-object v15, v2

    goto :goto_5

    :cond_4
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "MD5 Digest Calculator required for version 3 key encryptor."

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    array-length v1, v8

    invoke-virtual {v7, v8, v10, v1}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([BII)[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v10

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move v13, v10

    move v14, v12

    goto :goto_5

    :cond_6
    :goto_3
    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v1

    const/16 v3, 0xfe

    if-ne v1, v3, :cond_7

    array-length v1, v8

    add-int/lit8 v1, v1, -0x12

    new-array v3, v1, [B

    add-int/lit8 v4, v1, -0x2

    invoke-static {v8, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v3, v4}, Lorg/spongycastle/openpgp/PGPSecretKey;->checksum(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v5

    aget-byte v6, v5, v10

    aput-byte v6, v3, v4

    sub-int/2addr v1, v9

    aget-byte v4, v5, v9

    aput-byte v4, v3, v1

    move-object v15, v2

    move-object/from16 v16, v15

    move-object/from16 v17, v3

    goto :goto_4

    :cond_7
    move-object v15, v2

    move-object/from16 v16, v15

    move-object/from16 v17, v8

    :goto_4
    move v13, v10

    move v14, v13

    :goto_5
    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    instance-of v2, v1, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    if-eqz v2, :cond_8

    new-instance v2, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v12

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V

    goto :goto_6

    :cond_8
    new-instance v2, Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v12

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V

    :goto_6
    new-instance v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    iget-object v0, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    return-object v1

    :cond_9
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "no private key in this SecretKey - public key present only."

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extractKeyData(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)[B
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getSecretKeyData()[B

    move-result-object v9

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v1

    if-eqz v1, :cond_a

    :try_start_0
    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v1

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-ne v1, v10, :cond_5

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v1

    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B

    move-result-object v3

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v9

    move-object/from16 v1, p1

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object v1

    iget-object v0, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v8, v11}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->getChecksumCalculator(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x14

    goto :goto_2

    :cond_2
    array-length v0, v1

    sub-int/2addr v0, v11

    :goto_2
    invoke-static {v2, v1, v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->checksum(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v0

    :goto_3
    array-length v2, v0

    if-eq v12, v2, :cond_4

    aget-byte v2, v0, v12

    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    add-int/2addr v3, v12

    aget-byte v3, v1, v3

    if-ne v2, v3, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checksum mismatch at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v9, v1

    goto/16 :goto_7

    :cond_5
    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v1

    iget-object v2, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B

    move-result-object v13

    array-length v14, v9

    new-array v15, v14, [B

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v1

    array-length v7, v1

    new-array v6, v7, [B

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v1

    invoke-static {v1, v12, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v12

    move/from16 v16, v5

    :goto_4
    if-eq v5, v10, :cond_7

    aget-byte v1, v9, v16

    shl-int/lit8 v2, v1, 0x8

    add-int/lit8 v3, v16, 0x1

    aget-byte v4, v9, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v17, v2, 0x8

    aput-byte v1, v15, v16

    aget-byte v1, v9, v3

    aput-byte v1, v15, v3

    iget-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    add-int/lit8 v4, v16, 0x2

    move-object/from16 v1, p1

    move-object v3, v13

    move/from16 v18, v4

    move-object v4, v6

    move v10, v5

    move-object v5, v9

    move-object v11, v6

    move/from16 v6, v18

    move/from16 v19, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object v1

    array-length v2, v1

    move/from16 v3, v18

    invoke-static {v1, v12, v15, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v17, 0x2

    add-int v16, v17, v16

    const/4 v1, 0x3

    if-eq v10, v1, :cond_6

    move/from16 v1, v19

    sub-int v2, v16, v1

    invoke-static {v9, v2, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_6
    move/from16 v1, v19

    :goto_5
    add-int/lit8 v5, v10, 0x1

    move v7, v1

    move-object v6, v11

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    aget-byte v0, v9, v16

    aput-byte v0, v15, v16

    add-int/lit8 v0, v16, 0x1

    aget-byte v1, v9, v0

    aput-byte v1, v15, v0

    aget-byte v1, v9, v16

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    move v1, v12

    :goto_6
    const/4 v2, 0x2

    add-int/lit8 v3, v14, -0x2

    if-ge v12, v3, :cond_8

    aget-byte v3, v15, v12

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_9

    move-object v9, v15

    goto :goto_7

    :cond_9
    new-instance v2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checksum mismatch: passphrase wrong, expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " found "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    const-string v2, "Exception decrypting key"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_a
    :goto_7
    return-object v9
.end method

.method private static getDValue(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/PBEProtectionRemoverFactory;Ljava/lang/String;)[B
    .locals 9

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    invoke-static {p0, p2}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "protected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    invoke-static {p0, p2}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->parseS2K(Ljava/io/InputStream;)Lorg/spongycastle/bcpg/S2K;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/spongycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/spongycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-interface {p1, p2}, Lorg/spongycastle/openpgp/operator/PBEProtectionRemoverFactory;->createDecryptor(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v2

    const/4 p0, 0x7

    invoke-virtual {v2, p0, v0}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B

    move-result-object v4

    const/4 v3, 0x7

    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual/range {v2 .. v8}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p1, p0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p1, p0}, Lorg/spongycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "protected block not found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseSecretKeyFromSExpr(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/PBEProtectionRemoverFactory;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 8

    .line 1
    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protected-private-key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/spongycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getDValue(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/PBEProtectionRemoverFactory;Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKey;

    new-instance v6, Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v5, v7, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v5}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getEncoded()[B

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

    invoke-direct {p1, v6, p2}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "no q value found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "no curve details found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown key type found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseSecretKeyFromSExpr(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/PBEProtectionRemoverFactory;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 9

    .line 2
    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protected-private-key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NIST "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/spongycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/spongycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    new-instance v8, Lorg/spongycastle/bcpg/PublicKeyPacket;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    const/16 v1, 0x13

    invoke-direct {v8, v1, v2, v3}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    invoke-static {p0}, Lorg/spongycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getDValue(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/PBEProtectionRemoverFactory;Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKey;

    new-instance v0, Lorg/spongycastle/bcpg/SecretKeyPacket;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getEncoded()[B

    move-result-object v7

    move-object v2, v0

    move-object v3, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {p0, v8, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    return-object p1

    :cond_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "no q value found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "no curve details found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown key type found"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static replacePublicKey(Lorg/spongycastle/openpgp/PGPSecretKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 4

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKey;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyIDs do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5

    instance-of v0, p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->trustPk:Lorg/spongycastle/bcpg/TrustPacket;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v2, p1}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-virtual {p1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    new-instance v3, Lorg/spongycastle/bcpg/UserAttributePacket;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/spongycastle/bcpg/UserAttributePacket;-><init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V

    invoke-virtual {p1, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :goto_3
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/ContainedPacket;

    invoke-virtual {p1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    :cond_4
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v1

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v4, p1}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/spongycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public extractPrivateKey(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 4

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->extractKeyData(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)[B

    move-result-object p1

    new-instance v1, Lorg/spongycastle/bcpg/BCPGInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown public key algorithm encountered"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;-><init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-object v1

    :pswitch_1
    new-instance p1, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;-><init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-object v1

    :pswitch_2
    new-instance p1, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;-><init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-object v1

    :cond_1
    new-instance p1, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;-><init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Exception constructing key"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getKeyEncryptionAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result p0

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    return-object p0
.end method

.method public getS2K()Lorg/spongycastle/bcpg/S2K;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object p0

    return-object p0
.end method

.method public getS2KUsage()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result p0

    return p0
.end method

.method public getUserAttributes()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getUserIDs()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public isMasterKey()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result p0

    return p0
.end method

.method public isPrivateKeyEmpty()Z
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->secret:Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getSecretKeyData()[B

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isSigningKey()Z
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKey;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-eq p0, v1, :cond_1

    const/16 v1, 0x13

    if-eq p0, v1, :cond_1

    const/16 v1, 0x14

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
