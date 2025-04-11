.class public Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;
.super Landroid/app/ITaskStackListener$Stub;
.source "RemoteAppTaskWatcher.java"


# instance fields
.field public mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

.field public mHandler:Landroid/os/Handler;

.field public mNeedToNotifyRecentTaskListUpdated:Z

.field public mNeedToNotifyTaskDisplayChanged:Z

.field public mWatcherLooper:Landroid/os/Looper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    const-string v0, "RemoteAppTaskWatcher"

    const-string v1, "RemoteAppTaskWatcher: Entered"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mWatcherLooper:Landroid/os/Looper;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    .line 41
    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    .line 43
    new-instance p1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mWatcherLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, v0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;-><init>(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public clearMessages()V
    .locals 2

    const-string v0, "RemoteAppTaskWatcher"

    const-string v1, "****** TaskWatcher:clearMessages "

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityDismissingDockedTask()V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityDismissingSplitTask(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityRotation(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .line 0
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOccludeChangeNotice(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRecentTaskListUpdated()V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 1

    .line 160
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p2, Landroid/os/Message;->what:I

    .line 162
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 163
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 221
    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 223
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 224
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2

    .line 168
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 169
    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 171
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTaskRequestedOrientationChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 0

    .line 205
    iget-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    if-eqz p1, :cond_0

    .line 206
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x5

    .line 207
    iput p2, p1, Landroid/os/Message;->what:I

    .line 208
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 118
    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onTaskWindowingModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerTaskChangeNotifier(Lcom/android/server/remoteappmode/TaskChangeNotifier;)V
    .locals 2

    const-string v0, "RemoteAppTaskWatcher"

    const-string/jumbo v1, "registerTaskChangeNotifier"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    return-void
.end method

.method public setNeedToNotifyRecentTaskListUpdated(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    return-void
.end method

.method public setNeedToNotifyTaskDisplayChanged(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    return-void
.end method

.method public unregisterTaskChangeNotifier()V
    .locals 2

    const-string v0, "RemoteAppTaskWatcher"

    const-string/jumbo v1, "unregisterTaskChangeNotifier"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    return-void
.end method
