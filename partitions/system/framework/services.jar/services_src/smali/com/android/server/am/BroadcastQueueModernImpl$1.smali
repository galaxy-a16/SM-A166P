.class public Lcom/android/server/am/BroadcastQueueModernImpl$1;
.super Landroid/app/UidObserver;
.source "BroadcastQueueModernImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueueModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 1806
    iget-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    iget-object p3, p3, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p3

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 1808
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    invoke-static {p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->-$$Nest$fgetmUidForeground(Lcom/android/server/am/BroadcastQueueModernImpl;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 1810
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    invoke-static {p2}, Lcom/android/server/am/BroadcastQueueModernImpl;->-$$Nest$fgetmUidForeground(Lcom/android/server/am/BroadcastQueueModernImpl;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1812
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->-$$Nest$mrefreshProcessQueuesLocked(Lcom/android/server/am/BroadcastQueueModernImpl;I)V

    .line 1813
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
