.class public abstract Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "SemUpdateTrustAppClient.java"


# instance fields
.field public mDataTransmissionUnit:I

.field public mErrorValue:I

.field public final mPath:Ljava/lang/String;

.field public mSuccessValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p5

    move/from16 v12, p7

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 42
    new-instance v8, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v13, 0x0

    move-object v1, p1

    invoke-direct {v8, p1, v12, v13, v13}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    const v0, 0xe1000

    .line 31
    iput v0, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mDataTransmissionUnit:I

    .line 46
    iput-object v11, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mPath:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, -0x64

    if-ne v12, v0, :cond_0

    .line 48
    iput v1, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    const/16 v0, 0x64

    .line 49
    iput v0, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mSuccessValue:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne v12, v0, :cond_1

    .line 51
    iput v1, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    .line 52
    iput v13, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mSuccessValue:I

    const/high16 v0, 0x300000

    .line 53
    iput v0, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mDataTransmissionUnit:I

    .line 55
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemUpdateTrustAppClient: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mDataTransmissionUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final handleUpdate(I)V
    .locals 3

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onSemTrustAppUpdateEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mSuccessValue:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public abstract sehInstallTAEnd([B)I
.end method

.method public abstract sehInstallTAStart()I
.end method

.method public abstract sehInstallTAWrite([B)I
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->startUpdate()V

    return-void
.end method

.method public final startUpdate()V
    .locals 12

    const-string/jumbo v0, "startUpdate: start"

    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    .line 81
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 86
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v2, "startUpdate: No file exist"

    .line 88
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v2, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    .line 92
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUpdate: size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x19000

    new-array v2, v2, [B

    .line 99
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 100
    invoke-virtual {v0, v2, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v2, "startUpdate: done reading file"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->sehInstallTAStart()I

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    .line 124
    :cond_2
    iget v2, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mDataTransmissionUnit:I

    const-string/jumbo v3, "startUpdate: OPERATION_WRITE error"

    if-ne v2, v5, :cond_3

    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->sehInstallTAWrite([B)I

    move-result v2

    if-eqz v2, :cond_8

    .line 126
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    .line 132
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-double v4, v2

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mDataTransmissionUnit:I

    int-to-double v7, v2

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 133
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUpdate: loopCnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v4, v6

    :goto_1
    if-ge v4, v2, :cond_8

    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v7, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mDataTransmissionUnit:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 139
    new-array v7, v5, [B

    .line 140
    sget-boolean v8, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v9, ", byteBuffer.remaining():"

    if-eqz v8, :cond_5

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startUpdate: read length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", byteBuffer.position()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 141
    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_5
    invoke-virtual {v0, v7, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_6

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startUpdate: byteBuffer.position() after get()"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->sehInstallTAWrite([B)I

    move-result v5

    if-eqz v5, :cond_7

    .line 151
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :try_start_2
    const-string v2, "SHA-256"

    .line 160
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    array-length v3, v0

    :goto_2
    if-ge v6, v3, :cond_9

    aget-byte v4, v0, v6

    .line 170
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 172
    :cond_9
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUpdate: digest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->sehInstallTAEnd([B)I

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "startUpdate: OPERATION_END error"

    .line 177
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    .line 182
    :cond_b
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mSuccessValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "startUpdate: failure to get MessageDigest instance"

    .line 162
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    iget v0, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    return-void

    :catch_1
    move-exception v2

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_3
    const-string/jumbo v3, "startUpdate: failure to read file"

    .line 105
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v3, p0, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->mErrorValue:I

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;->handleUpdate(I)V

    if-eqz v0, :cond_c

    .line 109
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    const-string/jumbo p0, "startUpdate: failed to close file"

    .line 112
    invoke-static {v1, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_4
    return-void
.end method
