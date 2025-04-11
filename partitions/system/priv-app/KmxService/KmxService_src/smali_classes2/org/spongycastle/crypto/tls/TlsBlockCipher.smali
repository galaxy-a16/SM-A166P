.class public Lorg/spongycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected encryptThenMAC:Z

.field protected randomData:[B

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected useExplicitIV:Z

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v1

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iget-boolean v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    mul-int/lit8 v1, v10, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v1, v2

    iget-boolean v2, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-nez v2, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_0
    move v11, v1

    invoke-static {v7, v11}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v12

    new-instance v13, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/4 v14, 0x0

    add-int/lit8 v15, v1, 0x0

    new-instance v6, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v16

    move-object v1, v6

    move-object/from16 v3, p5

    move v5, v15

    move-object v14, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v1, v15

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v12, v1, v10}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v1, v10

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v12, v1, v10}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v1, v10

    iget-boolean v4, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v12, v1, v4}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr v5, v1

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v12, v5, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v6

    add-int/2addr v5, v6

    move/from16 v17, v5

    move-object v5, v1

    move/from16 v1, v17

    :goto_0
    if-ne v1, v11, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v13, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v3, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v2, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    goto :goto_1

    :cond_2
    iput-object v13, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v2, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v3, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v2

    :goto_1
    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v4, 0x1

    invoke-interface {v2, v4, v1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method


# virtual methods
.method public checkPaddingConstantTime([BIIII)I
    .locals 4

    add-int/2addr p2, p3

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-gt v1, p4, :cond_1

    :cond_0
    add-int/2addr p5, v1

    if-le p5, p3, :cond_2

    :cond_1
    move p1, v3

    move p4, p1

    move v1, p4

    goto :goto_1

    :cond_2
    sub-int p3, p2, v1

    move p4, v3

    :goto_0
    add-int/lit8 p5, p3, 0x1

    aget-byte p3, p1, p3

    xor-int/2addr p3, v0

    or-int/2addr p3, p4

    int-to-byte p4, p3

    if-lt p5, p2, :cond_5

    move p1, v1

    if-eqz p4, :cond_3

    move v1, v3

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    :goto_2
    const/16 p2, 0x100

    if-ge p1, p2, :cond_4

    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    xor-int/2addr p1, v0

    or-int/2addr p1, p4

    int-to-byte p4, p1

    move p1, p2

    goto :goto_2

    :cond_4
    aget-byte p1, p0, v3

    xor-int/2addr p1, p4

    int-to-byte p1, p1

    aput-byte p1, p0, v3

    return v1

    :cond_5
    move p3, p5

    goto :goto_0
.end method

.method public chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->lowestBitSet(I)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v14, p4

    move/from16 v0, p5

    move/from16 v1, p6

    iget-object v2, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    iget-object v2, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v15

    iget-boolean v2, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v2, :cond_0

    add-int v2, v4, v15

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v15, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    iget-boolean v3, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v3, :cond_1

    add-int/2addr v2, v4

    :cond_1
    if-lt v1, v2, :cond_c

    iget-boolean v2, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v2, :cond_2

    sub-int v3, v1, v15

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    rem-int v5, v3, v4

    if-nez v5, :cond_b

    const/16 v5, 0x14

    const/16 v16, 0x1

    if-eqz v2, :cond_4

    add-int v2, v0, v1

    sub-int v7, v2, v15

    invoke-static {v14, v7, v2}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-object v7, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    sub-int v13, v1, v15

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v7 .. v13}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4
    :goto_2
    iget-boolean v1, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v8, 0x0

    invoke-direct {v2, v8, v14, v0, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    invoke-interface {v1, v7, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    add-int/2addr v0, v4

    sub-int/2addr v3, v4

    :cond_5
    move v9, v0

    move v8, v3

    move v0, v7

    :goto_3
    if-ge v0, v8, :cond_6

    iget-object v1, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    add-int v2, v9, v0

    invoke-interface {v1, v14, v2, v14, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v0, v4

    goto :goto_3

    :cond_6
    iget-boolean v0, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v0, :cond_7

    move v10, v7

    goto :goto_4

    :cond_7
    move v10, v15

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move v2, v9

    move v3, v8

    move v11, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->checkPaddingConstantTime([BIIII)I

    move-result v0

    if-nez v0, :cond_8

    move/from16 v10, v16

    goto :goto_5

    :cond_8
    move v10, v7

    :goto_5
    sub-int v0, v8, v0

    iget-boolean v1, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-nez v1, :cond_9

    sub-int v12, v0, v15

    add-int v0, v9, v12

    add-int v1, v0, v15

    invoke-static {v14, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    iget-object v0, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    sub-int v7, v8, v15

    iget-object v8, v6, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->randomData:[B

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v9

    move v6, v12

    invoke-virtual/range {v0 .. v8}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMacConstantTime(JS[BIII[B)[B

    move-result-object v0

    invoke-static {v0, v13}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v10, v0

    move v0, v12

    :cond_9
    if-nez v10, :cond_a

    add-int/2addr v0, v9

    invoke-static {v14, v9, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_b
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p6

    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v8

    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-nez v3, :cond_0

    add-int v4, v7, v1

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    add-int/lit8 v5, v8, -0x1

    rem-int/2addr v4, v8

    sub-int/2addr v5, v4

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    iget-boolean v3, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    if-nez v2, :cond_2

    rsub-int v2, v5, 0xff

    div-int/2addr v2, v8

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I

    move-result v2

    mul-int/2addr v2, v8

    add-int/2addr v5, v2

    :cond_2
    move v9, v5

    const/4 v2, 0x1

    invoke-static {v1, v7, v9, v2}, Landroidx/activity/b;->a(IIII)I

    move-result v1

    iget-boolean v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v3, :cond_3

    add-int/2addr v1, v8

    :cond_3
    new-array v15, v1, [B

    const/4 v14, 0x0

    if-eqz v3, :cond_4

    new-array v1, v8, [B

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsContext;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/spongycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    invoke-static {v1, v14, v15, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v8, 0x0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v10, v1

    goto :goto_1

    :cond_4
    move-object/from16 v5, p4

    move/from16 v6, p5

    move v10, v14

    :goto_1
    invoke-static {v5, v6, v15, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v11, v10, v7

    iget-boolean v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v14, v15, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v11, v1

    :cond_5
    move v1, v11

    move v2, v14

    :goto_2
    if-gt v2, v9, :cond_6

    add-int/lit8 v11, v1, 0x1

    int-to-byte v3, v9

    aput-byte v3, v15, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v11

    goto :goto_2

    :cond_6
    :goto_3
    if-ge v10, v1, :cond_7

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2, v15, v10, v15, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v10, v8

    goto :goto_3

    :cond_7
    iget-boolean v2, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz v2, :cond_8

    iget-object v10, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    const/4 v0, 0x0

    move-wide/from16 v11, p1

    move/from16 v13, p3

    move v2, v14

    move-object v14, v15

    move-object v3, v15

    move v15, v0

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_8
    move-object v3, v15

    :goto_4
    return-object v3
.end method

.method public getPlaintextLimit(I)I
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    iget-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->useExplicitIV:Z

    if-eqz v2, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    iget-boolean p0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptThenMAC:Z

    if-eqz p0, :cond_1

    sub-int/2addr p1, v1

    rem-int p0, p1, v0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_1
    rem-int p0, p1, v0

    sub-int/2addr p1, p0

    sub-int/2addr p1, v1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getReadMac()Lorg/spongycastle/crypto/tls/TlsMac;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    return-object p0
.end method

.method public getWriteMac()Lorg/spongycastle/crypto/tls/TlsMac;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    return-object p0
.end method

.method public lowestBitSet(I)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method
