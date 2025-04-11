.class Lcom/android/server/blockchain/BlockchainTZNative;
.super Ljava/lang/Object;
.source "BlockchainTZNative.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mIsLoaded:Z

.field public mMOPTZNativePtr_:J

.field public mProcessName:Ljava/lang/String;

.field public mRecvBufSize:I

.field public mRootName:Ljava/lang/String;

.field public mSendBufSize:I

.field public mTAId:I

.field public mTATechnology:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 15
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockchainTZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockchainTZService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iput p1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    .line 30
    iput p5, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mSendBufSize:I

    .line 31
    iput p6, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mRecvBufSize:I

    .line 32
    iput-object p2, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mTATechnology:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mRootName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mProcessName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    return-void
.end method

.method private native nativeBlockchainProcessTACommand(Landroid/blockchain/TACommandRequest;Landroid/blockchain/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    .line 39
    iget-wide v5, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v12, 0x0

    cmp-long v5, v5, v12

    const/4 v14, 0x1

    if-eqz v5, :cond_0

    const-string v0, "BlockchainTZService"

    const-string v1, "BlockchainTZNative::loadTA called for TA that is already loaded. Call Ignored"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_0
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    const/4 v15, 0x0

    if-gtz v7, :cond_4

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v5, v1

    long-to-int v6, v3

    .line 49
    iget v7, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mTAId:I

    iget v8, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mSendBufSize:I

    iget v9, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mRecvBufSize:I

    iget-object v10, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mRootName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mProcessName:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v16, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/blockchain/BlockchainTZNative;->nativeBlockchainCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_2

    const-string v0, "BlockchainTZService"

    const-string v1, "Error: nativeBlockchainCreateTLCommunicationContext failed"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    .line 56
    :cond_2
    const-class v1, Lcom/android/server/blockchain/BlockchainTZNative;

    monitor-enter v1

    .line 57
    :try_start_0
    iput-boolean v14, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-boolean v1, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "BlockchainTZService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockchainTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v14

    :catchall_0
    move-exception v0

    .line 58
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_0
    const-string v0, "BlockchainTZService"

    const-string v1, "BlockchainFw_loadTA: cannot get ta offset or size"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15
.end method

.method public native nativeBlockchainCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeBlockchainDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;
    .locals 4

    .line 78
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    const-string v1, "BlockchainTZService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockchainTZNative::processTACommand: request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    new-instance v0, Landroid/blockchain/TACommandResponse;

    invoke-direct {v0}, Landroid/blockchain/TACommandResponse;-><init>()V

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/server/blockchain/BlockchainTZNative;->nativeBlockchainProcessTACommand(Landroid/blockchain/TACommandRequest;Landroid/blockchain/TACommandResponse;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "BlockchainTZNative::processTACommand: Error: nativeBlockchainProcessTACommand returned failure"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public unloadTA()V
    .locals 5

    .line 64
    const-class v0, Lcom/android/server/blockchain/BlockchainTZNative;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZNative;->nativeBlockchainDestroyTLCommunicationContext()V

    .line 73
    iput-wide v3, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    .line 74
    sget-boolean p0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "BlockchainTZService"

    const-string v0, "BlockchainTZNative::unloadTA called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "BlockchainTZService"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockchainTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
