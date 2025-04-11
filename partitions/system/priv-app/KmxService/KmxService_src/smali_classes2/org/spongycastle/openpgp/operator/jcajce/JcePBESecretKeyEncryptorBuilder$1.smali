.class Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;
.super Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private c:Ljavax/crypto/Cipher;

.field private iv:[B

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V
    .locals 6

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    invoke-static {v2}, Lorg/spongycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/CFB/NoPadding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->c:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    invoke-static {v1, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->iv:[B

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid key: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bad padding: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "illegal block size: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public encryptKeyData([B[B[BII)[B
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    invoke-static {v2}, Lorg/spongycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/CFB/NoPadding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->c:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    invoke-static {v1, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->iv:[B

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p3, p4, p5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid iv: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid key: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bad padding: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "illegal block size: "

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

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;->iv:[B

    return-object p0
.end method
