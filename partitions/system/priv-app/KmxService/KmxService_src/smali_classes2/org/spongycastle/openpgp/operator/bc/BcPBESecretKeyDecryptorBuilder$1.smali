.class Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;
.super Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;[CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;

    invoke-direct {p0, p2, p3}, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public recoverKeyData(I[B[B[BII)[B
    .locals 6

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0, p2, p3}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/spongycastle/crypto/BlockCipher;[B[B)Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p0

    new-array p1, p6, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

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
