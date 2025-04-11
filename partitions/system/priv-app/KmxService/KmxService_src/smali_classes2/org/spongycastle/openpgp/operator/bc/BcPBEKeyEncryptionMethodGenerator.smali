.class public Lorg/spongycastle/openpgp/operator/bc/BcPBEKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method public constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method


# virtual methods
.method public encryptSessionInfo(I[B[B)[B
    .locals 7

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    const/4 v0, 0x1

    invoke-static {v0, p0, p2, p1}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/spongycastle/crypto/BlockCipher;[B[B)Lorg/spongycastle/crypto/BufferedBlockCipher;

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
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "encryption failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
    .locals 0

    invoke-super {p0, p1}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;

    return-object p0
.end method
