.class public final Lcom/samsung/android/authnrservice/service/FingerprintOperation;
.super Ljava/lang/Object;
.source "FingerprintOperation.java"


# static fields
.field public static sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;


# instance fields
.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 64
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mUserId:I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    .locals 2

    const-class v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    .line 59
    :cond_0
    sget-object p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized getWrappedObject([B)[B
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "FPO"

    const-string v1, "getWrappedObject"

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 140
    array-length v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 144
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "FPO"

    const-string v0, "getWrappedObject failed"

    .line 153
    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-object p1

    .line 157
    :cond_1
    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "FPO"

    const-string/jumbo v0, "sendRequest failed"

    .line 145
    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendRequest([B)[B
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "FPO"

    const-string/jumbo v1, "sendRequest"

    .line 70
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "FPO"

    const-string v0, "Fingerprint Service not found"

    .line 73
    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 77
    :try_start_1
    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    array-length v2, p1

    const/16 v3, 0xe

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 83
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 84
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v5, 0x5301

    .line 85
    invoke-virtual {v4, v1, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 86
    array-length v5, p1

    const/16 v6, 0xa

    add-int/2addr v6, v5

    int-to-short v5, v6

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    const/16 v6, 0x5302

    .line 87
    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v5, 0x6

    int-to-short v6, v5

    .line 88
    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const-string v4, "authnr"

    .line 89
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v4, v1, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x2800

    new-array p1, p1, [B

    .line 95
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mUserId:I

    invoke-virtual {v1, v3, v2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semProcessFido(I[B[B)I

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "FPO"

    const-string/jumbo v1, "request failed"

    .line 97
    invoke-static {p1, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return-object v0

    .line 101
    :cond_2
    :try_start_2
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :goto_0
    :try_start_3
    const-string p1, "FPO"

    const-string v1, "invalid input"

    .line 78
    invoke-static {p1, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChallenge([B)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "FPO"

    const-string/jumbo v1, "set challenge"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 112
    array-length v3, p1

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FPO"

    const-string/jumbo v0, "setChallenge failed"

    .line 125
    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return v3

    .line 129
    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "FPO"

    const-string/jumbo v0, "sendRequest failed"

    .line 117
    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
