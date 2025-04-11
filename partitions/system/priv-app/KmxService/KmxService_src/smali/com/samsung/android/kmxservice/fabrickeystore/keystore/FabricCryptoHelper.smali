.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;
    }
.end annotation


# static fields
.field public static CHUNK_SIZE:I = 0x40000

.field private static final GCM_IV_SIZE_IN_BYTES:I = 0xc

.field private static final GCM_TAG_SIZE_IN_BYTES:I = 0x10

.field public static final PASSWORD_LENGTH:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "FabricCryptoHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fileCipher(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[BZ)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance p4, Ljava/io/BufferedOutputStream;

    invoke-direct {p4, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p3, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result v1

    const-string v2, "AES"

    const-string v3, "GCM"

    const-string v4, "NoPadding"

    invoke-static {v2, v3, v4}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCipher;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p6, :cond_1

    invoke-virtual {v2, p2, v3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getIv()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    move p2, v1

    goto :goto_0

    :cond_1
    const/16 p6, 0xc

    new-array v4, p6, [B

    invoke-virtual {v0, v4, p0, p6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    if-ge v5, p6, :cond_2

    sget-object p2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string p5, "IV that read size error"

    invoke-static {p2, p5}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return p0

    :cond_2
    const/4 p6, 0x2

    :try_start_9
    invoke-virtual {v2, p2, p6, v4}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I[B)V

    add-int/lit8 p2, v1, -0xc

    :goto_0
    if-eqz p5, :cond_3

    array-length p6, p5

    if-lez p6, :cond_3

    invoke-virtual {v2, p5}, Lcom/samsung/security/fabric/crypto/FabricCipher;->updateAad([B)V

    sget-object p5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string p6, "fileCipher update aad"

    invoke-static {p5, p6}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget p5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    new-array p6, p5, [B

    if-le p2, p5, :cond_4

    move p5, p0

    :goto_1
    sub-int v4, v1, p5

    sget v5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    if-le v4, v5, :cond_5

    invoke-virtual {v0, p6, p0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    sget v5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    invoke-virtual {v2, p6, p0, v5}, Lcom/samsung/security/fabric/crypto/FabricCipher;->update([BII)[B

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr p5, v4

    goto :goto_1

    :cond_4
    move p5, p0

    :cond_5
    sub-int/2addr p2, p5

    invoke-virtual {v0, p6, p0, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p2

    invoke-virtual {v2, p6, p0, p2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->doFinal([BII)[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    return v3

    :cond_6
    :goto_2
    :try_start_e
    sget-object p2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string p5, "file stream is null"

    invoke-static {p2, p5}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz p1, :cond_7

    :try_start_10
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_7
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz p3, :cond_8

    :try_start_12
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    :cond_8
    return p0

    :catchall_0
    move-exception p2

    :try_start_13
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p4

    :try_start_14
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_9

    :try_start_15
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_16
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p2

    :try_start_18
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :catchall_6
    move-exception p1

    if-eqz p3, :cond_a

    :try_start_19
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p2

    :try_start_1a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public static getChunkSize()I
    .locals 1

    sget v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    return v0
.end method

.method private getDerPublicKey([B)[B
    .locals 1

    array-length p0, p1

    const/16 v0, 0x41

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getDerMemberKey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static isPossibleUseSecureImportSha1()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.security.fabric.crypto.FabricKeyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "exportKeyWithSecureImportSHA1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, [B

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[isPossibleUseSecureImportSHA1] can not load exportKeyWithSecureImportSHA1, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[isPossibleUseSecureImportSHA1] can not load fabric.crypto, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    move v0, v1

    :goto_2
    return v0
.end method

.method public static declared-synchronized setChunkSize(I)Z
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    monitor-enter v0

    if-lez p0, :cond_0

    const/high16 v1, 0x40000

    if-gt p0, v1, :cond_0

    :try_start_0
    sput p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createSymmetricKey(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createSymmetricKey alias already exist "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "AES"

    invoke-static {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->generateKey()Z

    move-result p0

    return p0
.end method

.method public decrypt(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[B)Z
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->fileCipher(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[BZ)Z

    move-result p0

    return p0
.end method

.method public decrypt(Ljava/lang/String;[B[B)[B
    .locals 5

    .line 2
    array-length p0, p2

    add-int/lit8 p0, p0, -0xc

    array-length v0, p2

    invoke-static {p2, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string v0, "GCM"

    const-string v1, "NoPadding"

    const-string v2, "AES"

    invoke-static {v2, v0, v1}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I[B)V

    if-eqz p3, :cond_0

    array-length p0, p3

    if-lez p0, :cond_0

    invoke-virtual {v0, p3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->updateAad([B)V

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string p1, "decrypt update aad"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length p0, p2

    add-int/lit8 p0, p0, -0xc

    add-int/lit8 p1, p0, -0x10

    new-array p3, p1, [B

    sget v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    const/4 v2, 0x0

    if-le p0, v1, :cond_1

    move v1, v2

    :goto_0
    sub-int v3, p0, v1

    sget v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0, p2, v1, v4}, Lcom/samsung/security/fabric/crypto/FabricCipher;->update([BII)[B

    move-result-object v3

    sget v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    invoke-static {v3, v2, p3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    sub-int/2addr p0, v1

    invoke-virtual {v0, p2, v1, p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->doFinal([BII)[B

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-static {p0, v2, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method public encrypt(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[B)Z
    .locals 7

    .line 1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->fileCipher(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;[BZ)Z

    move-result p0

    return p0
.end method

.method public encrypt(Ljava/lang/String;[B[B)[B
    .locals 5

    .line 2
    array-length p0, p2

    const/16 v0, 0xc

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x10

    new-array p0, p0, [B

    const-string v1, "GCM"

    const-string v2, "NoPadding"

    const-string v3, "AES"

    invoke-static {v3, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getIv()[B

    move-result-object p1

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    invoke-virtual {v1, p3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->updateAad([B)V

    sget-object p3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string v2, "encrypt update aad"

    invoke-static {p3, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length p3, p2

    sget v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    const/4 v3, 0x0

    if-le p3, v2, :cond_1

    move p3, v3

    :goto_0
    array-length v2, p2

    sub-int/2addr v2, p3

    sget v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    if-le v2, v4, :cond_2

    invoke-virtual {v1, p2, p3, v4}, Lcom/samsung/security/fabric/crypto/FabricCipher;->update([BII)[B

    move-result-object v2

    sget v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    invoke-static {v2, v3, p0, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr p3, v2

    goto :goto_0

    :cond_1
    move p3, v3

    :cond_2
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-virtual {v1, p2, p3, v2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->doFinal([BII)[B

    move-result-object v1

    array-length v2, p2

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x10

    invoke-static {v1, v3, p0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, v3, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public existKey(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public exportBackupWrappedKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exportBackupWrappedKey alias not exist "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "exportBackupWrappedKey password length error, "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->exportKeyWithPassword(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public exportWrappedKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "targetKeyAlias not exist "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "encapsulationKeyAlias not exist "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public exportWrappedKey(Ljava/lang/String;Ljava/security/PublicKey;Z)[B
    .locals 1

    .line 2
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->isPossibleUseSecureImportSha1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "Can not load exportKeyWithSecureImportSHA1"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    sget-object p3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string v0, "Export wrappedKey using RSA-OAEP-SHA1"

    invoke-static {p3, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string v0, "Export wrappedKey using RSA-OAEP-SHA256"

    invoke-static {p3, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->exportKeyWithSecureImport(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public generateAttestKeyPair(Ljava/lang/String;[B)Z
    .locals 2

    new-instance p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricAttestation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->existKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Attest Key Pair already exist. alias: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->generateKeyPairWithKeyAttestation([B)[Ljava/security/cert/X509Certificate;

    return v1
.end method

.method public generateKeyPair(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateKeyPair alias already exist "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "EC"

    invoke-static {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->generateKey()Z

    move-result p0

    return p0
.end method

.method public generatePQCKeyPair(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateKeyPair alias already exist "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "KEM"

    invoke-static {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->generateKeyPQ()Z

    move-result p0

    return p0
.end method

.method public getDevicePublicKey(Ljava/lang/String;)[B
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getPublicKey(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getPQCPublicKey(Ljava/lang/String;)[B
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getPQEncapKey(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public importBackupWrappedKey(Ljava/lang/String;Ljava/lang/String;[B[B)Z
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "importBackupWrappedKey password length error, "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->importKeyWithPassword(Ljava/lang/String;[BLjava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public importWrappedKey(Ljava/lang/String;Ljava/lang/String;[B[B)Z
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "importWrappedKey not exist "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->importKey(Ljava/lang/String;[BLjava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public keyAgreement([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    array-length p0, p1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getDerMemberKey([B)[B

    move-result-object p1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    array-length v1, p1

    if-eq v1, v0, :cond_1

    return p0

    :cond_1
    move-object v4, p1

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object v2

    const-string p0, "label"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string p0, "context"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[B)Z

    move-result p0

    return p0
.end method

.method public keyAgreementWithPQdecap([BLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->getDerPublicKey([B)[B

    move-result-object v4

    if-nez v4, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get DER public key"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object v0

    const-string p0, "label"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string p0, "context"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    move-object v1, p5

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[B)Z

    move-result p0

    return p0
.end method

.method public keyAgreementWithPQencap([BLjava/lang/String;Ljava/lang/String;[B)[B
    .locals 7

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->getDerPublicKey([B)[B

    move-result-object v3

    if-nez v3, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get DER public key"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object v0

    const-string p0, "label"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string p0, "context"

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    move-object v1, p4

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public removeAttestKey(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/samsung/security/fabric/crypto/FabricAttestation;

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricAttestation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricAttestation;->deleteKey()V

    return-void
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->deleteKey(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeKey alias not exist : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeKeys(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__"

    invoke-static {p1, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->aliases()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->removeKey(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public validateRecoveryData([BLjava/lang/String;[B)Z
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->checkImportedBlobWithPassword([BLjava/lang/String;[B)Z

    move-result p0

    return p0
.end method
