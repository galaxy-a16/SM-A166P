.class public Lcom/android/server/knox/dar/KeyProtector;
.super Lcom/android/server/knox/dar/KeyProtectorBase;
.source "KeyProtector.java"


# static fields
.field public static sInstance:Lcom/android/server/knox/dar/KeyProtector;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/server/knox/dar/KeyProtectorBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/knox/dar/KeyProtector;
    .locals 2

    .line 36
    sget-object v0, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/android/server/knox/dar/KeyProtector;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/server/knox/dar/KeyProtector;

    invoke-direct {v1}, Lcom/android/server/knox/dar/KeyProtector;-><init>()V

    sput-object v1, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    return-object v0
.end method


# virtual methods
.method public final attach(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public decryptFast([B[B)[B
    .locals 5

    const/4 p0, 0x0

    const-string v0, "KeyProtector"

    if-eqz p1, :cond_1

    .line 202
    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 209
    :try_start_0
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 210
    array-length v3, p2

    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 211
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/GCM/NoPadding"

    .line 212
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 216
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 217
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "fast decryption - Unexpected error"

    .line 219
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0

    :cond_1
    :goto_1
    const-string p1, "fast decryption - Only supported for 32-bytes key"

    .line 203
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 7

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/KeyProtectorBase;->checkSecretKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/KeyProtectorBase;->checkSecretKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/KeyProtectorBase;->deleteSecretKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 154
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->deleteFile(ILjava/lang/String;)Z

    move-result v1

    const-string v4, "KeyProtector"

    if-nez v0, :cond_2

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete key with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete file with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public final deleteFile(ILjava/lang/String;)Z
    .locals 1

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ENCRYPTED_KEY_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteFile - File path : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyProtector"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public encryptFast([B[B)[B
    .locals 4

    const/4 p0, 0x0

    const-string v0, "KeyProtector"

    if-eqz p1, :cond_1

    .line 175
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/GCM/NoPadding"

    .line 183
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v3, 0x1

    .line 187
    invoke-virtual {p1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 188
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 189
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 191
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 181
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "fast encryption - Unexpected error"

    .line 195
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0

    :cond_1
    :goto_2
    const-string p1, "fast encryption - Only supported for 32-bytes key"

    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public exists(Ljava/lang/String;I)Z
    .locals 1

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/KeyProtectorBase;->checkSecretKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key exists in keystore("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyProtector"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public protect([BLjava/lang/String;I)Z
    .locals 7

    const-string v0, "KeyProtector"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 60
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/KeyProtectorBase;->setSecretKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/KeyProtectorBase;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    const-string v4, "AES/GCM/NoPadding"

    .line 62
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    .line 65
    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 67
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v2, :cond_1

    move v4, v1

    goto :goto_0

    .line 84
    :cond_1
    array-length v4, v2

    :goto_0
    const/16 v6, 0xc

    if-eq v4, v6, :cond_2

    .line 87
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid iv length : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v1

    .line 94
    :cond_2
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->writeToFile(ILjava/lang/String;[B)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Failed to write into file..."

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v1

    :cond_3
    const-string p0, "Successfully wrote into file!"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception p1

    const-string v2, "Failed to concatenate byte arrays"

    .line 97
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v1

    .line 69
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unexpected failure while set key"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/KeyProtectorBase;->deleteSecretKey(Ljava/lang/String;)Z

    return v1

    :cond_5
    :goto_1
    const-string p0, "Wrong input parameter..."

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final readFile(ILjava/lang/String;)[B
    .locals 2

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ENCRYPTED_KEY_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "readFile - File path : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyProtector"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    .line 236
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 238
    new-array p2, p1, [B

    .line 239
    invoke-virtual {p0, p2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p2, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, p2

    .line 243
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_0

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p0, p2

    .line 241
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_0

    .line 247
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_0
    move-object p2, p0

    goto :goto_4

    :goto_3
    if-eqz p2, :cond_1

    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 250
    :catch_5
    :cond_1
    throw p1

    :catch_6
    :cond_2
    :goto_4
    return-object p2
.end method

.method public release(Ljava/lang/String;I)[B
    .locals 5

    .line 122
    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0xc

    .line 125
    :try_start_0
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 126
    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 135
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/KeyProtectorBase;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string p1, "AES/GCM/NoPadding"

    .line 136
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 140
    new-instance p2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {p2, v3, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 141
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "KeyProtector"

    const-string p2, "Failed in copying array..."

    .line 128
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public final writeToFile(ILjava/lang/String;[B)Z
    .locals 1

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ENCRYPTED_KEY_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "writeToFile - File path : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyProtector"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 264
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 266
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x1

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    goto :goto_5

    :catch_3
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 271
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_0

    .line 275
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_4
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 269
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_0

    goto :goto_1

    :catch_5
    :cond_0
    :goto_3
    const/4 p0, 0x0

    :goto_4
    return p0

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz p2, :cond_1

    .line 275
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 278
    :catch_6
    :cond_1
    throw p0
.end method
