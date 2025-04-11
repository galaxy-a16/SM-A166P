.class Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPGPDataEncryptor"
.end annotation


# instance fields
.field private final c:Ljavax/crypto/Cipher;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;[B)V
    .locals 3

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result v1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createStreamCipher(IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I

    move-result p0

    invoke-static {p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "imvalid algorithm parameter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
