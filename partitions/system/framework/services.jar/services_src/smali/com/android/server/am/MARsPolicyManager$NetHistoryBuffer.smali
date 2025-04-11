.class public Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# instance fields
.field public final buffer:[Ljava/lang/String;

.field public pointer:I

.field public size:I

.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field public totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;I)V
    .locals 0

    .line 3393
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3389
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    .line 3391
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    .line 3394
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->totalSize:I

    .line 3395
    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBuffer()[Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 3407
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->totalSize:I

    if-ge v0, v1, :cond_0

    .line 3408
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3410
    :cond_0
    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    .line 3413
    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 3414
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 3416
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    if-ge v2, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    .line 3417
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    .line 3419
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 0

    .line 3424
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    return p0
.end method

.method public declared-synchronized put(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 3399
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 3400
    iget p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->totalSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    .line 3401
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3402
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3404
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
