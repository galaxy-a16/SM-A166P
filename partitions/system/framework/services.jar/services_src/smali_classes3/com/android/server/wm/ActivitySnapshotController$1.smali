.class public Lcom/android/server/wm/ActivitySnapshotController$1;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "ActivitySnapshotController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$1;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iput p3, p0, Lcom/android/server/wm/ActivitySnapshotController$1;->val$userId:I

    invoke-direct {p0, p2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 169
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 170
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 171
    iget p0, p0, Lcom/android/server/wm/ActivitySnapshotController$1;->val$userId:I

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public write()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget p0, p0, Lcom/android/server/wm/ActivitySnapshotController$1;->val$userId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 180
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 181
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
