.class public Lcom/android/server/wm/ActivitySnapshotController$3;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "ActivitySnapshotController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;

.field public final synthetic val$files:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/ArrayList;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$3;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iput-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController$3;->val$files:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$3;->val$files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController$3;->val$files:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 495
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$3;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-static {v2}, Lcom/android/server/wm/ActivitySnapshotController;->-$$Nest$fgetmSnapshotPersistQueue(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/SnapshotPersistQueue;

    move-result-object v2

    iget v3, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget v1, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wm/SnapshotPersistQueue;->deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
