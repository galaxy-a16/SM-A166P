.class public Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;
.super Lorg/spongycastle/openpgp/PGPEncryptedData;
.source "SourceFile"


# instance fields
.field keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;Lorg/spongycastle/bcpg/InputStreamPacket;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPEncryptedData;-><init>(Lorg/spongycastle/bcpg/InputStreamPacket;)V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    return-void
.end method

.method private confirmCheckSum([B)Z
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x1

    move v2, p0

    move v1, v0

    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-eq v1, v3, :cond_0

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p1, v1

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    if-ne v1, v3, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    aget-byte p1, p1, v1

    int-to-byte v1, v2

    if-ne p1, v1, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method


# virtual methods
.method public getDataStream(Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->getAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->getEncSessionKey()[[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;->recoverSessionData(I[[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->confirmCheckSum([B)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-eqz v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encData:Lorg/spongycastle/bcpg/InputStreamPacket;

    instance-of v2, v2, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    new-array v4, v3, [B

    const/4 v5, 0x1

    invoke-static {v0, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p1, v2, v0, v4}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptorFactory;->createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encData:Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-direct {v0, p0, v2}, Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;-><init>(Lorg/spongycastle/openpgp/PGPEncryptedData;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->truncStream:Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;->getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->integrityCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    new-instance v0, Lorg/spongycastle/util/io/TeeInputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->truncStream:Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->integrityCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v3}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;->getBlockSize()I

    move-result p1

    new-array v0, p1, [B
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "unexpected end of stream."

    if-eq v1, p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz p1, :cond_3

    if-ltz v0, :cond_3

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encStream:Ljava/io/InputStream;

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Exception starting decryption"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :cond_4
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPEncryptedData;->encData:Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lorg/spongycastle/openpgp/PGPKeyValidationException;

    const-string p1, "key checksum failed"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPKeyValidationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyID()J
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSymmetricAlgorithm(Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->getAlgorithm()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->keyData:Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->getEncSessionKey()[[B

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;->recoverSessionData(I[[B)[B

    move-result-object p0

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    return p0
.end method
