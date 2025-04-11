.class public Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# instance fields
.field mBootCompletedBroadcastReceived:Z

.field mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

.field mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

.field mLockedBootCompletedBroadcastReceived:Z

.field mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

.field mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetBootCompletedBroadcastsReceiversSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetBootCompletedBroadcastsUidsSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    .line 268
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    .line 273
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 281
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 288
    iput p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUserId:I

    return-void
.end method


# virtual methods
.method public final dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 360
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    .line 361
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-nez p3, :cond_1

    .line 362
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    .line 383
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 384
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 387
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public dequeueDeferredBootCompletedBroadcast(Z)Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 434
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 439
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 446
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 449
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 4

    .line 330
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 331
    invoke-virtual {p3, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 332
    invoke-virtual {p3, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_3

    .line 336
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 337
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    invoke-virtual {p3, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 340
    invoke-virtual {p3, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 305
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 307
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mLockedBootCompletedBroadcastReceived:Z

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 314
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mBootCompletedBroadcastReceived:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I
    .locals 3

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 427
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 1

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public updateUidReady(I)V
    .locals 2

    .line 292
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mLockedBootCompletedBroadcastReceived:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 293
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mBootCompletedBroadcastReceived:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 297
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    return-void
.end method
