.class public final Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# instance fields
.field public final mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

.field public final mAppRequestedModeByDisplay:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 1374
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "  AppRequestObserver"

    .line 1460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mAppRequestedModeByDisplay:"

    .line 1461
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1462
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string v3, " -> "

    const-string v4, "    "

    if-ge v1, v2, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1464
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    .line 1465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "    mAppPreferredRefreshRateRangeByDisplay:"

    .line 1467
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1469
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1470
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1471
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 1472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final findModeByIdLocked(II)Landroid/view/Display$Mode;
    .locals 4

    .line 1447
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 1451
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 1452
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final setAppPreferredRefreshRateRangeLocked(IFF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v2

    goto :goto_3

    :cond_1
    :goto_1
    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1423
    :goto_2
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v1, p2, p3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 1424
    iget p2, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    iget p2, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    goto :goto_0

    .line 1430
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    .line 1431
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1430
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 1436
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1437
    iget p2, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p3, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {p2, p3}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    goto :goto_4

    .line 1439
    :cond_5
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppPreferredRefreshRateRangeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1442
    :goto_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public setAppRequest(IIFF)V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1383
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 1384
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->setAppPreferredRefreshRateRangeLocked(IFF)V

    .line 1386
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAppRequestedModeLocked(II)V
    .locals 3

    .line 1390
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object p2

    .line 1391
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1400
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forBaseModeRefreshRate(F)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1401
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1402
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p2

    .line 1401
    invoke-static {v1, p2}, Lcom/android/server/display/mode/Vote;->forSize(II)Lcom/android/server/display/mode/Vote;

    move-result-object p2

    goto :goto_0

    .line 1404
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x0

    move-object p2, v0

    .line 1409
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1411
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
