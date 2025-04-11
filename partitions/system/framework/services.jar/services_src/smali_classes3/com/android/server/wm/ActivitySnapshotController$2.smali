.class public Lcom/android/server/wm/ActivitySnapshotController$2;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "ActivitySnapshotController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;

.field public final synthetic val$ar:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic val$code:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;IILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iput p3, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->val$code:I

    iput p4, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->val$userId:I

    iput-object p5, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->val$ar:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, p2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-static {v0}, Lcom/android/server/wm/ActivitySnapshotController;->-$$Nest$fgetmSnapshotLoader(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/AppSnapshotLoader;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->val$code:I

    iget v2, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->val$userId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v1, v1, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->val$ar:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$2;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
