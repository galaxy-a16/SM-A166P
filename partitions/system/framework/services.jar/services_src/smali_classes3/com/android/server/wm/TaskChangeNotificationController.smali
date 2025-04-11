.class public Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mLocalTaskStackListeners:Ljava/util/ArrayList;

.field public final mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static synthetic $r8$lambda$0NzPBxJ1aTNpucnnvZpgoO53sIY(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kX9Y9vfTpxOM6Mx6y9gwCc7foo(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8dQcHx3zZhZOHU-Wt3hJeWHXuik(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BTQ6ibS6BlSofIYkLMIpn-Qy3mk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$21(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfF_ZPe4028k55xyrXE_bUHIOo4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdUJ8liR-JlGEijEsibnixLPOLU(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZCisAYO9uTyyTUBTTal7TYFEwQ(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBk2SN2scla7zCIEiVdZSu-m5Dg(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaHJcRCANkoEWZUAo0_HkOT6Eok(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MMj7gwe8-ZVmcV3VJdWtXjdR0vs(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$26(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OAICxS0BeIEmt8Ip4IJUcKsH1Ac(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5HZs0JcSry3JNf16vOQ8nxYyKY(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R2d-XFQRvDvm0yxyMfMq6Dla1Ew(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VPW583qD7U9PCgOIZE3DPIgO-oQ(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZtnfXpKj__3fDR5OuARu3N-fttw(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_1zzj0_i0lhti3nJc00ZzvA7MMU(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_awuNSURc7ttTEnPds7jhEKdXfs(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGxW1VRPQkjYBpB8XZDrnumUFTk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgeX_zsTFuBpyOgTVdYTBanG7Ik(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$23(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gubvlDzx5VAcCdKc1xeXcMPtakg(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jxOOK1u4MJy5_9sX9CuWQfc2qS4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbhVv0eRJ-i8k2lPI7c0_G1fJ8w(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pOYVnjB9BcbV9eaSU-52ikC3JV8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDrFjIsvWX1A57JfxANHf8TPBbk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxpLvBrJ0N4NATErAvxO6jwafbU(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$24(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xLZiucMiX8fRugdgtHvJj4-DsTk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$25(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zuW9RtpRm3I43pFJV8hz9GSjGZ8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityDismissingDockedTask(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityForcedResizable(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayFailed(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayRerouted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityPinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityRestartAttempt(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityUnpinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyBackPressedOnTaskRoot(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyLockTaskModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyOccludeChangeNotice(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyOnActivityRotation(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskCreated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskDescriptionChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskDisplayChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskFocusChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskListFrozen(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskListUpdated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskMovedToBack(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskMovedToFront(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskProfileLocked(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRemovalStarted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRemoved(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskSnapshotChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskStackChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskWindowingModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 100
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda11;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 104
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda19;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 108
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 112
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda21;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 116
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda22;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 120
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda23;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 124
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda24;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 128
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda25;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 133
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda26;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 137
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 143
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 147
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 158
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 162
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 166
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda6;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 170
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda7;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 174
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda8;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 178
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 182
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda10;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 186
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda12;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 190
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda13;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 194
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda14;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 198
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda15;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 202
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda16;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 207
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda17;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 214
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda18;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 329
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 330
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 97
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 101
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 5

    .line 138
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 139
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-interface {p0, v0, v1, v4, v2}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return-void
.end method

.method public static synthetic lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, p1}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Ljava/lang/String;

    .line 151
    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onActivityDismissingSplitTask(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedTask()V

    return-void
.end method

.method public static synthetic lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 171
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/window/TaskSnapshot;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 175
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    return-void
.end method

.method public static synthetic lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 179
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    return-void
.end method

.method public static synthetic lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 183
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 105
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void
.end method

.method public static synthetic lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 187
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$new$21(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 191
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    return-void
.end method

.method public static synthetic lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 195
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    return-void
.end method

.method public static synthetic lambda$new$23(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 199
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$24(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 203
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onLockTaskModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$new$25(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2

    .line 208
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-class v1, Landroid/content/ComponentName;

    .line 209
    invoke-static {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 208
    :goto_0
    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onOccludeChangeNotice(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static synthetic lambda$new$26(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 215
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskWindowingModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 113
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 117
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1

    .line 121
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method public static synthetic lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 125
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 3

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    .line 134
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void
.end method


# virtual methods
.method public final forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 380
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 385
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 367
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 372
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 373
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyActivityDismissingDockedRootTask(Ljava/lang/String;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 444
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityForcedResizable(IILjava/lang/String;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 451
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 452
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 460
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 461
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 402
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 401
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 403
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, v0, Landroid/os/Message;->sendingUid:I

    .line 404
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 405
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityRequestedOrientationChanged(II)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 505
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 424
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 425
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 426
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 427
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 428
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 430
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 431
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityUnpinned()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 413
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyLockTaskModeChanged(I)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 615
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyOccludeChangeNotice(Landroid/content/ComponentName;Z)V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 622
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 623
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyOnActivityRotation(I)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 599
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskCreated(ILandroid/content/ComponentName;)V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 476
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 477
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 497
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskDisplayChanged(II)V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 557
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 558
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskFocusChanged(IZ)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 582
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 583
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskListFrozen(Z)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 575
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskListUpdated()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 567
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskMovedToBack(Landroid/app/TaskInfo;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 608
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 490
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 526
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 527
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 516
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRemoved(I)V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 484
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRequestedOrientationChanged(II)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 590
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 591
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 536
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 537
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskStackChanged()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 395
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyTaskWindowingModeChanged(I)V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 632
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2

    .line 334
    instance-of v0, p1, Landroid/os/Binder;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    instance-of v1, p1, Landroid/app/TaskStackListener;

    if-eqz v1, :cond_0

    .line 338
    move-object v1, p1

    check-cast v1, Landroid/app/TaskStackListener;

    invoke-virtual {v1}, Landroid/app/TaskStackListener;->setIsLocal()V

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 345
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 346
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 1

    .line 351
    instance-of v0, p1, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    if-eqz p1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 357
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 358
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
