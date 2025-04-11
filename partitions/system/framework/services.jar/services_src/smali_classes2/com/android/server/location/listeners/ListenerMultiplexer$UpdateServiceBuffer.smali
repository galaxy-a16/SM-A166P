.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mBufferCount:I

.field public mUpdateServiceRequired:Z

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 805
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 806
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .locals 1

    monitor-enter p0

    .line 819
    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 3

    .line 826
    monitor-enter p0

    .line 827
    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 828
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    if-nez v0, :cond_1

    .line 829
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 830
    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    move v2, v0

    .line 832
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 835
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 832
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isBuffered()Z
    .locals 1

    monitor-enter p0

    .line 810
    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markUpdateServiceRequired()V
    .locals 1

    monitor-enter p0

    .line 814
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
