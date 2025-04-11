.class public Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;
.super Ljava/lang/Object;
.source "EmergencyModePackageHandler.java"


# instance fields
.field public final mUidMap:Landroid/util/SparseArray;

.field public final mUidMapOfNewPkgState:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    .line 349
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 415
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 354
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getOrAllocate(I)Ljava/util/LinkedHashMap;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 422
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getOrAllocateNewState(I)Ljava/util/LinkedHashMap;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 431
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public packagesForUserId(I)Ljava/util/LinkedHashMap;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocate(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 359
    invoke-virtual {p0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putNewState(ILjava/lang/String;I)V
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 369
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 385
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 407
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public userIdAt(I)I
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public userIdCount()I
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method
