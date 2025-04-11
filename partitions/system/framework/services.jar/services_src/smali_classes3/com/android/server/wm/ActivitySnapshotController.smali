.class public Lcom/android/server/wm/ActivitySnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "ActivitySnapshotController.java"


# instance fields
.field final mPendingCaptureActivity:Landroid/util/ArraySet;

.field final mPendingDeleteActivity:Landroid/util/ArraySet;

.field final mPendingLoadActivity:Landroid/util/ArraySet;

.field final mPendingRemoveActivity:Landroid/util/ArraySet;

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSavedFilesInOrder:Ljava/util/ArrayList;

.field public final mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mUserSavedFiles:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$iOnDMPzqvZdGg4QEYXaVm2F_2V0(Lcom/android/server/wm/ActivitySnapshotController;ILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->lambda$adjustSavedFileOrder$0(ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshotLoader(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/AppSnapshotLoader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshotPersistQueue(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/SnapshotPersistQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingCaptureActivity:Landroid/util/ArraySet;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 104
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 105
    new-instance v0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 107
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 108
    new-instance p2, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {p2, v0}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 109
    new-instance p2, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-direct {p2, p1}, Lcom/android/server/wm/ActivitySnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->initialize(Lcom/android/server/wm/SnapshotCache;)V

    .line 111
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110122

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    invoke-static {}, Lcom/android/server/wm/ActivitySnapshotController;->isSnapshotEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotEnabled(Z)V

    return-void
.end method

.method public static createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .locals 7

    .line 150
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110231

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 152
    new-instance p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const-string v3, "activity_snapshots"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V

    return-object p0
.end method

.method public static getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 0

    .line 301
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isSnapshotEnabled()Z
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.activity_screenshot"

    const/4 v1, 0x0

    .line 143
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$adjustSavedFileOrder$0(ILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 368
    invoke-static {p2}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    if-eqz p1, :cond_0

    .line 371
    iget-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final addBelowTopActivityIfExist(Lcom/android/server/wm/Task;Landroid/util/ArraySet;Ljava/lang/String;)V
    .locals 0

    .line 352
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 354
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 356
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final addUserSavedFile(IILandroid/window/TaskSnapshot;)V
    .locals 2

    .line 454
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 455
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    if-nez v1, :cond_0

    .line 457
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;-><init>(II)V

    .line 458
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 462
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->purgeSavedFile()V

    :cond_0
    return-void
.end method

.method public final adjustSavedFileOrder(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 366
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 367
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivitySnapshotController;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final cleanUpUserFiles(I)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$1;

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/wm/ActivitySnapshotController$1;-><init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final containsFile(II)Z
    .locals 0

    .line 450
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public findAppTokenForSnapshot(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canCaptureSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTaskDescription(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 410
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public bridge synthetic getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTaskDescription(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    return-object p1
.end method

.method public bridge synthetic getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTopActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopFullscreenActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 404
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getTopFullscreenActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTopFullscreenActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getUserFiles(I)Landroid/util/SparseArray;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->cleanUpUserFiles(I)V

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public handleCloseActivityTransition(Lcom/android/server/wm/SnapshotController$TransitionState;)V
    .locals 2

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p1, v0}, Lcom/android/server/wm/SnapshotController$TransitionState;->getParticipant(Z)Landroid/util/ArraySet;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleCloseTaskTransition(Lcom/android/server/wm/SnapshotController$TransitionState;)V
    .locals 3

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p1, v0}, Lcom/android/server/wm/SnapshotController$TransitionState;->getParticipant(Z)Landroid/util/ArraySet;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 333
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const-string/jumbo v2, "remove-snapshot"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowTopActivityIfExist(Lcom/android/server/wm/Task;Landroid/util/ArraySet;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleOpenActivityTransition(Lcom/android/server/wm/SnapshotController$TransitionState;)V
    .locals 2

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/server/wm/SnapshotController$TransitionState;->getParticipant(Z)Landroid/util/ArraySet;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingCaptureActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleOpenTaskTransition(Lcom/android/server/wm/SnapshotController$TransitionState;)V
    .locals 3

    const/4 v0, 0x1

    .line 338
    invoke-virtual {p1, v0}, Lcom/android/server/wm/SnapshotController$TransitionState;->getParticipant(Z)Landroid/util/ArraySet;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    const-string v2, "load-snapshot"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowTopActivityIfExist(Lcom/android/server/wm/Task;Landroid/util/ArraySet;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->adjustSavedFileOrder(Lcom/android/server/wm/Task;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSnapshotScale()F
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10500d9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const-string/jumbo v0, "remove-snapshot"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowTopActivityIfExist(Lcom/android/server/wm/Task;Landroid/util/ArraySet;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->onCommitTransition()V

    :cond_1
    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 389
    invoke-super {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 390
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 391
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(II)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 379
    invoke-super {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 380
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 381
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(II)V

    return-void
.end method

.method public final onCommitTransition()V
    .locals 10

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingCaptureActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingCaptureActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->recordSnapshot(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 236
    invoke-static {v1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 242
    invoke-static {v1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    .line 243
    iget-object v3, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v3, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    .line 244
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 248
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 249
    invoke-static {v7}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    .line 250
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v1, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotCache;->getSnapshot(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_4

    .line 255
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/ActivitySnapshotController;->containsFile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v9, Lcom/android/server/wm/ActivitySnapshotController$2;

    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivitySnapshotController$2;-><init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;IILcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v8, v9}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 270
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public postTransitionStart()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->onCommitTransition()V

    return-void
.end method

.method public preTransitionStart()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public final purgeSavedFile()V
    .locals 6

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x14

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez v1, :cond_1

    sub-int v1, v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    if-eqz v3, :cond_0

    .line 477
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 478
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 483
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->removeSnapshotFiles(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public final recordSnapshot(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->recordSnapshotInner(Lcom/android/server/wm/WindowContainer;Z)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 281
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(IILandroid/window/TaskSnapshot;)V

    :cond_0
    return-void
.end method

.method public final removeIfUserSavedFileExist(II)V
    .locals 2

    .line 441
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister;->removeSnap(II)V

    :cond_0
    return-void
.end method

.method public final removeSnapshotFiles(Ljava/util/ArrayList;)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$3;

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/wm/ActivitySnapshotController$3;-><init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 500
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetTmpFields()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingCaptureActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 215
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public systemReady()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/SnapshotController;->registerTransitionStateConsumer(ILjava/util/function/Consumer;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/SnapshotController;->registerTransitionStateConsumer(ILjava/util/function/Consumer;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/SnapshotController;->registerTransitionStateConsumer(ILjava/util/function/Consumer;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/SnapshotController;->registerTransitionStateConsumer(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public use16BitFormat()Z
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result p0

    return p0
.end method
