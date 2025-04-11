.class Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;
.super Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private iv:[B

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V
    .locals 6

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V

    return-void
.end method


# virtual methods
.method public encryptKeyData([B[BII)[B
    .locals 6

    .line 1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->encryptKeyData([B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public encryptKeyData([B[B[BII)[B
    .locals 7

    .line 2
    :try_start_0
    iget v0, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->iv:[B

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    if-nez p2, :cond_1

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    :cond_1
    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->iv:[B

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_0
    const/4 p0, 0x1

    invoke-static {p0, v0, p1, p2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/spongycastle/crypto/BlockCipher;[B[B)Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p0

    new-array p1, p5, [B

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

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

    const-string p3, "decryption failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public getCipherIV()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;->iv:[B

    return-object p0
.end method
