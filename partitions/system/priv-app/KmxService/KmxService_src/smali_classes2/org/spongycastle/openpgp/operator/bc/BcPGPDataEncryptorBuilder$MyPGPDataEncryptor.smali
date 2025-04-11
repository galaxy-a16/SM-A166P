.class Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPGPDataEncryptor"
.end annotation


# instance fields
.field private final c:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;[B)V
    .locals 2

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->access$000(Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)Z

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createStreamCipher(ZLorg/spongycastle/crypto/BlockCipher;Z[B)Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Lorg/spongycastle/crypto/BufferedBlockCipher;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid parameters: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lorg/bouncycastle/cert/a;->b(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->access$100(Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/io/CipherOutputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;->c:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, p1, p0}, Lorg/spongycastle/crypto/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    return-object v0
.end method
