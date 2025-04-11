.class Lcom/android/server/knox/dar/ddar/ta/TZNative;
.super Ljava/lang/Object;
.source "TZNative.java"


# instance fields
.field public mDDARTZNativePtr_:J

.field public mIsLoaded:Z

.field public mProcessName:Ljava/lang/String;

.field public mRecvBufSize:I

.field public mRootName:Ljava/lang/String;

.field public mSendBufSize:I

.field public mTAId:I

.field public mTATechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDAR:TZNative"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTAId:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    iput p5, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mSendBufSize:I

    iput p6, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRecvBufSize:I

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    return-void
.end method

.method private native nativeDDARProcessTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(IJJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    iget-wide v5, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_0

    const-string v0, "DualDAR:TZNative"

    const-string v1, "TZNative::loadTA called for TA that is already loaded. Call Ignored"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v13

    :cond_0
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-gtz v7, :cond_3

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v5, v1

    long-to-int v4, v3

    iget v6, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTAId:I

    iget v7, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mSendBufSize:I

    iget v8, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRecvBufSize:I

    iget-object v9, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mTATechnology:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mRootName:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mProcessName:Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v15

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    const-string v0, "DualDAR:TZNative"

    const-string v1, "Error: nativeDDARCreateTLCommunicationContext failed"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v14

    :cond_2
    const-class v1, Lcom/android/server/knox/dar/ddar/ta/TZNative;

    monitor-enter v1

    :try_start_0
    iput-boolean v13, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "DualDAR:TZNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TZNative::loadTA: mDDARTZNativePtr_ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_0
    const-string v0, "DualDAR:TZNative"

    const-string v1, "loadTA: cannot get ta offset or size"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v14
.end method

.method public native nativeDDARCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDDARDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;)Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TZNative::processTACommand: request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; mDDARTZNativePtr_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDAR:TZNative"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;

    invoke-direct {v0}, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->nativeDDARProcessTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TZNative::processTACommand: Error: nativeDDARProcessTACommand returned failure"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public unloadTA()V
    .locals 5

    const-class v0, Lcom/android/server/knox/dar/ddar/ta/TZNative;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->nativeDDARDestroyTLCommunicationContext()V

    iput-wide v3, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mDDARTZNativePtr_:J

    const-string p0, "DualDAR:TZNative"

    const-string v0, "TZNative::unloadTA called"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "DualDAR:TZNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/ta/TZNative;->mIsLoaded:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
