.class public Lorg/spongycastle/openssl/PEMEncryptedKeyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dekAlgName:Ljava/lang/String;

.field private final iv:[B

.field private final keyBytes:[B

.field private final parser:Lorg/spongycastle/openssl/PEMKeyPairParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[BLorg/spongycastle/openssl/PEMKeyPairParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    iput-object p2, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->iv:[B

    iput-object p3, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->keyBytes:[B

    iput-object p4, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->parser:Lorg/spongycastle/openssl/PEMKeyPairParser;

    return-void
.end method


# virtual methods
.method public decryptKeyPair(Lorg/spongycastle/openssl/PEMDecryptorProvider;)Lorg/spongycastle/openssl/PEMKeyPair;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/spongycastle/openssl/PEMDecryptorProvider;->get(Ljava/lang/String;)Lorg/spongycastle/openssl/PEMDecryptor;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->parser:Lorg/spongycastle/openssl/PEMKeyPairParser;

    iget-object v1, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->keyBytes:[B

    iget-object p0, p0, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->iv:[B

    invoke-interface {p1, v1, p0}, Lorg/spongycastle/openssl/PEMDecryptor;->decrypt([B[B)[B

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/spongycastle/openssl/PEMKeyPairParser;->parse([B)Lorg/spongycastle/openssl/PEMKeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openssl/PEMException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception processing key pair: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openssl/PEMException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create extraction operator: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    throw p0
.end method
