.class public Lorg/spongycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected usesNonce:Z

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v12

    iput-object v7, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iput-boolean v11, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    mul-int/lit8 v1, v10, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v13, v1, v2

    invoke-static {v7, v13}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v14

    new-instance v15, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/4 v6, 0x0

    add-int/lit8 v16, v1, 0x0

    new-instance v5, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v17

    move-object v1, v5

    move-object/from16 v3, p5

    move-object v7, v5

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v1, v1, v16

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v14, v1, v10}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v1, v10

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v14, v1, v10}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v1, v10

    if-ne v1, v13, :cond_2

    if-eqz v12, :cond_0

    iput-object v7, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v15, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_0

    :cond_0
    iput-object v15, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v7, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    iput-object v8, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    iput-object v9, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    :goto_0
    if-eqz v11, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [B

    new-instance v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v4, v2, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v2

    move-object v2, v4

    :cond_1
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method


# virtual methods
.method public checkMAC(JS[BII[BII)V
    .locals 8

    invoke-static {p4, p5, p6}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 14

    move-object v0, p0

    move/from16 v7, p6

    iget-boolean v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    move-wide v8, p1

    invoke-virtual {p0, v1, v10, v8, v9}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->updateIV(Lorg/spongycastle/crypto/StreamCipher;ZJ)V

    goto :goto_0

    :cond_0
    move-wide v8, p1

    :goto_0
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    if-lt v7, v1, :cond_1

    sub-int v11, v7, v1

    new-array v12, v7, [B

    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v12

    invoke-interface/range {v1 .. v6}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move-object v4, v12

    move v5, v11

    move/from16 v6, p6

    move-object v7, v12

    move v8, v13

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    invoke-static {v12, v10, v11}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 12

    move-object v0, p0

    iget-boolean v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v2, 0x1

    move-wide v4, p1

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->updateIV(Lorg/spongycastle/crypto/StreamCipher;ZJ)V

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    add-int v1, v1, p6

    new-array v1, v1, [B

    iget-object v6, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v11, 0x0

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v1

    invoke-interface/range {v6 .. v11}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    iget-object v3, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v2

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    array-length v4, v2

    move-object p0, v0

    move-object p1, v2

    move p2, v3

    move p3, v4

    move-object/from16 p4, v1

    move/from16 p5, p6

    invoke-interface/range {p0 .. p5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-object v1
.end method

.method public getPlaintextLimit(I)I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public updateIV(Lorg/spongycastle/crypto/StreamCipher;ZJ)V
    .locals 1

    const/16 p0, 0x8

    new-array p0, p0, [B

    const/4 v0, 0x0

    invoke-static {p3, p4, p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    new-instance p3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, p3}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method
