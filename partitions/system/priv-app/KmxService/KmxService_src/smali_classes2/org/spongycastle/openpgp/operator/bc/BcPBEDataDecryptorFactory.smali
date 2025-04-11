.class public Lorg/spongycastle/openpgp/operator/bc/BcPBEDataDecryptorFactory;
.super Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>([CLorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0

    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/spongycastle/crypto/BlockCipher;[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p0

    return-object p0
.end method

.method public recoverSessionData(I[B[B)[B
    .locals 7

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/spongycastle/crypto/BlockCipher;[B[B)Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p0

    array-length p1, p3

    new-array p1, p1, [B

    const/4 v3, 0x0

    array-length v4, p3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    return-object p1

    :cond_0
    array-length p3, p2

    const/4 v0, 0x1

    add-int/2addr p3, v0

    new-array p3, p3, [B

    int-to-byte p1, p1

    aput-byte p1, p3, p0

    array-length p1, p2

    invoke-static {p2, p0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "Exception recovering session info"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
