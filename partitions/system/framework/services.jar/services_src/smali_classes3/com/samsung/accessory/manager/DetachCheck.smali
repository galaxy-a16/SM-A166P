.class public Lcom/samsung/accessory/manager/DetachCheck;
.super Ljava/lang/Object;
.source "DetachCheck.java"


# instance fields
.field public mAuthStarted:Z

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 3

    const-string v0, "SAccessoryManager_DetachCheck"

    const/4 v1, 0x0

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "NfcAdapter.getDefaultAdapter returns null"

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "retry, NfcAdapter.getDefaultAdapter returns null"

    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public isAuthChipExist()Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 p0, 0x1

    return p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthChipExistBySensor()I
    .locals 6

    .line 21
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthChipExistBySensor length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAccessoryManager_DetachCheck"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    aget-byte v2, v0, v1

    const/16 v5, -0x20

    if-eq v2, v5, :cond_0

    const/16 v5, -0x9

    if-eq v2, v5, :cond_0

    const/16 v5, -0xf

    if-eq v2, v5, :cond_0

    const/16 v5, -0xb

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1e

    if-ne v2, v5, :cond_1

    .line 29
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC Transaction ongoing, response="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const/4 p0, 0x2

    return p0

    .line 33
    :cond_1
    array-length v0, v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    return v4

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    return v1
.end method

.method public final requestStartTypeS()[B
    .locals 2

    const-string v0, "SAccessoryManager_DetachCheck"

    const-string v1, "Reqs"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 55
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->startCoverAuth()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 56
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestStopTypeS()V
    .locals 2

    const-string v0, "SAccessoryManager_DetachCheck"

    const-string/jumbo v1, "stopAuth"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    if-nez v1, :cond_0

    const-string p0, "SAccessoryManager_DetachCheck"

    const-string v1, "Do not call stopAuth because startAuth is not executed"

    .line 72
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 80
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->stopCoverAuth()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 76
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
