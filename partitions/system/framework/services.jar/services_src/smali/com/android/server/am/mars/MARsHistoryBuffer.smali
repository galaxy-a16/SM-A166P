.class public Lcom/android/server/am/mars/MARsHistoryBuffer;
.super Ljava/lang/Object;
.source "MARsHistoryBuffer.java"


# instance fields
.field public buffer:[Ljava/lang/String;

.field public pointer:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    iput v0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/MARsHistoryBuffer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/MARsHistoryBuffer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/MARsHistoryBuffer;
    .locals 1

    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/MARsHistoryBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBufferLine(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public declared-synchronized getLog()Ljava/util/ArrayList;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryLog;->getInstance()Lcom/android/server/am/mars/MARsHistoryLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsHistoryLog;->getLog()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPointer()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    return p0
.end method

.method public init()V
    .locals 1

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->buffer:[Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    if-lt v2, p1, :cond_0

    invoke-static {}, Lcom/android/server/am/mars/MARsHistoryLog;->getInstance()Lcom/android/server/am/mars/MARsHistoryLog;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/mars/MARsHistoryLog;->saveLogToFile(ZZ)V

    iput v0, p0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
