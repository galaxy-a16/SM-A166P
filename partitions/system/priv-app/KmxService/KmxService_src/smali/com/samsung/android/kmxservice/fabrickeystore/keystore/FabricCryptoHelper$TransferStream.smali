.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferStream"
.end annotation


# instance fields
.field mAad:[B

.field mEncrypt:Z

.field mOutputPfd:Landroid/os/ParcelFileDescriptor;

.field mReadSide:Landroid/os/ParcelFileDescriptor;

.field mTargetKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;[BLandroid/os/ParcelFileDescriptor;Z)V
    .locals 1

    const-string v0, "Transfer Stream Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mReadSide:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mTargetKeyAlias:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mAad:[B

    iput-boolean p5, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mEncrypt:Z

    iput-object p2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mOutputPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mReadSide:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mOutputPfd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v2, "AES"

    const-string v3, "GCM"

    const-string v4, "NoPadding"

    invoke-static {v2, v3, v4}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCipher;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mEncrypt:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mTargetKeyAlias:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getIv()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/16 v3, 0xc

    new-array v5, v3, [B

    invoke-virtual {v0, v5, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ge v6, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v2, "IV that read size error"

    invoke-static {p0, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mTargetKeyAlias:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v6, v5}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I[B)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;->mAad:[B

    if-eqz p0, :cond_2

    array-length v3, p0

    if-lez v3, :cond_2

    invoke-virtual {v2, p0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->updateAad([B)V

    invoke-static {}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v3, "TransferStream cipher update aad"

    invoke-static {p0, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I

    new-array p0, p0, [B

    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    sget v5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->CHUNK_SIZE:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge v3, v5, :cond_4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :cond_3
    :try_start_8
    invoke-virtual {v2, p0, v4, v3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->doFinal([BII)[B

    move-result-object p0

    array-length v2, p0

    invoke-virtual {v1, p0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4

    :cond_4
    :try_start_b
    invoke-virtual {v2, p0, v4, v5}, Lcom/samsung/security/fabric/crypto/FabricCipher;->update([BII)[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_d
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method
