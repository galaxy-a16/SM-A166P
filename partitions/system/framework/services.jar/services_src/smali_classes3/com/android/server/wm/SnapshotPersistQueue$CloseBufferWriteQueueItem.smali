.class public Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "SnapshotPersistQueue.java"


# instance fields
.field public mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 406
    invoke-direct {p0, p3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 407
    iput-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    :cond_0
    return-void
.end method
