.class public final Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueueImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueueImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p1, p1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->broadcastTimeoutLocked(Z)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-static {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->-$$Nest$mprocessNextBroadcast(Lcom/android/server/am/BroadcastQueueImpl;Z)V

    :goto_0
    return-void
.end method
