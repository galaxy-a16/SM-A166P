.class public Lcom/android/server/am/LmkdConnection;
.super Ljava/lang/Object;
.source "LmkdConnection.java"


# instance fields
.field public final mInputBuf:Ljava/nio/ByteBuffer;

.field public final mInputData:Ljava/io/DataInputStream;

.field public final mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

.field public mLmkdInputStream:Ljava/io/InputStream;

.field public mLmkdOutputStream:Ljava/io/OutputStream;

.field public mLmkdSocket:Landroid/net/LocalSocket;

.field public final mLmkdSocketLock:Ljava/lang/Object;

.field public final mMsgQueue:Landroid/os/MessageQueue;

.field public mReplyBuf:Ljava/nio/ByteBuffer;

.field public final mReplyBufLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mfileDescriptorEventHandler(Lcom/android/server/am/LmkdConnection;Ljava/io/FileDescriptor;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/LmkdConnection;->fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V
    .locals 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 95
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 97
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    const/16 v1, 0xde

    .line 102
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 105
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 106
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 118
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 119
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 125
    monitor-exit v0

    return v2

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/LmkdConnection;->openSocket()Landroid/net/LocalSocket;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string p0, "ActivityManager"

    const-string v1, "Failed to connect to lowmemorykiller, retry later"

    .line 131
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 138
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 139
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    if-eqz v6, :cond_2

    invoke-interface {v6, v4}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onConnect(Ljava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string p0, "ActivityManager"

    const-string v2, "Failed to communicate with lowmemorykiller, retry later"

    .line 146
    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    monitor-exit v0

    return v3

    .line 151
    :cond_2
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 152
    iput-object v4, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 153
    iput-object v5, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 154
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v4, Lcom/android/server/am/LmkdConnection$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/LmkdConnection$1;-><init>(Lcom/android/server/am/LmkdConnection;)V

    const/4 v5, 0x5

    invoke-virtual {v3, v1, v5, v4}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v0

    return v2

    .line 141
    :catch_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 142
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 163
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)Z
    .locals 1

    if-nez p2, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 338
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p1, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 339
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    move p2, p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 346
    :try_start_2
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 347
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/LmkdConnection;->processIncomingData()V

    :cond_1
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 178
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 177
    invoke-virtual {p2, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 179
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p2, 0x0

    .line 180
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 181
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    .line 185
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 186
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 188
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    invoke-interface {p0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onDisconnect()V

    return v0

    :catchall_0
    move-exception p0

    .line 188
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 181
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public isConnected()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final openSocket()Landroid/net/LocalSocket;
    .locals 3

    .line 253
    :try_start_0
    new-instance p0, Landroid/net/LocalSocket;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/LocalSocket;-><init>(I)V

    .line 254
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "lmkd"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {p0, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final processIncomingData()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/LmkdConnection;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_3

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->reset()V

    .line 202
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v2, v4, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 209
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-interface {v2, v3, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 213
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 214
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p0, "ActivityManager"

    const-string v2, "Received an unexpected packet from lmkd"

    .line 215
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-interface {v2, p0, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ActivityManager"

    const-string v2, "Received an unexpected packet from lmkd, replybuf is null"

    .line 220
    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "ActivityManager"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse lmkd data buffer. Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length p1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 281
    :catch_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    .line 282
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public waitForConnection(J)Z
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 241
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 242
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    :try_start_2
    monitor-exit v0

    return v2

    .line 244
    :catch_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 267
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 269
    :catch_0
    monitor-exit v0

    return v1

    .line 272
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
