.class Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;
.super Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;[CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-direct {p0, p2, p3}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p0

    return-object p0
.end method

.method public recoverSessionData(I[B[B)[B
    .locals 2

    if-eqz p3, :cond_0

    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB/NoPadding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    array-length p0, p2

    const/4 p3, 0x1

    add-int/2addr p0, p3

    new-array p0, p0, [B

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    array-length p1, p2

    invoke-static {p2, v0, p0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "Exception recovering session info"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
