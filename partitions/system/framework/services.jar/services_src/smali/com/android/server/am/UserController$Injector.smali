.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "UserController.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

.field public final mUserSwitchingDialogLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$KWbZgLeBCFNybHqaJHtisAV9bto(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/UserController$Injector;->lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZBQ0keIokIHpTn5wy3uNA4zlI8(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/UserController$Injector;->lambda$dismissKeyguard$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 3866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3862
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 3867
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static synthetic lambda$dismissKeyguard$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4121
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4122
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startUserWidgets$0(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .locals 0

    .line 4028
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    return-void
.end method


# virtual methods
.method public activityManagerForceStopPackage(ILjava/lang/String;)V
    .locals 11

    .line 4001
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 4004
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public activityManagerOnUserStopped(I)V
    .locals 0

    .line 3932
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    return-void
.end method

.method public batteryStatsServiceNoteEvent(ILjava/lang/String;I)V
    .locals 0

    .line 3969
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v7, p1

    .line 3896
    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move/from16 v1, p16

    .line 3900
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7581

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3906
    iget-object v1, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mEnableModernQueue:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_0

    :cond_1
    move/from16 v18, p10

    .line 3911
    :goto_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3912
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move/from16 v22, p14

    move/from16 v23, p15

    move/from16 v24, p16

    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v0

    .line 3916
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 0

    .line 3920
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkComponentPermission(Ljava/lang/String;IIIZ)I
    .locals 0

    .line 4009
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 4015
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 4014
    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearAllLockedTasks(Ljava/lang/String;)V
    .locals 0

    .line 4107
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearLockedTasks(Ljava/lang/String;)V

    return-void
.end method

.method public clearBroadcastQueueForUser(I)V
    .locals 1

    .line 4038
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4039
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 4040
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dismissKeyguard(Ljava/lang/Runnable;)V
    .locals 4

    .line 4119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4120
    new-instance v1, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 4126
    iget-object p1, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4127
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/UserController$Injector$2;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UserController$Injector$2;-><init>(Lcom/android/server/am/UserController$Injector;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismissUserSwitchingDialog(Ljava/lang/Runnable;)V
    .locals 2

    .line 4056
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4057
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    if-eqz v1, :cond_0

    .line 4058
    invoke-virtual {v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->dismiss(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 4059
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4061
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4063
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    .line 3928
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 3883
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2

    .line 3871
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .line 3965
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 3887
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 0

    const-string/jumbo p0, "mount"

    .line 4115
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0

    return-object p0
.end method

.method public getSystemServiceManager()Lcom/android/server/SystemServiceManager;
    .locals 0

    .line 3977
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object p0
.end method

.method public getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 3875
    new-instance v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;
    .locals 0

    .line 3879
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .line 3950
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "user"

    .line 3951
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3952
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3954
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 3958
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 3959
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3961
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 3924
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public installEncryptionUnawareProviders(I)V
    .locals 0

    .line 4052
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->installEncryptionUnawareProviders(I)V

    return-void
.end method

.method public isCallerRecents(I)Z
    .locals 0

    .line 4111
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result p0

    return p0
.end method

.method public isFirstBootOrUpgrade()Z
    .locals 1

    .line 3981
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 3983
    :try_start_0
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :catch_0
    move-exception p0

    .line 3985
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isHeadlessSystemUserMode()Z
    .locals 0

    .line 4146
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p0

    return p0
.end method

.method public isRuntimeRestarted()Z
    .locals 0

    .line 3973
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result p0

    return p0
.end method

.method public loadUserRecents(I)V
    .locals 0

    .line 4044
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->loadRecentTasksForUser(I)V

    return-void
.end method

.method public lockDeviceNowAndWaitForKeyguardShown()V
    .locals 6

    .line 4162
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4166
    :cond_0
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string/jumbo v1, "lockDeviceNowAndWaitForKeyguardShown"

    .line 4167
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4169
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4170
    new-instance v2, Lcom/android/server/am/UserController$Injector$3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/am/UserController$Injector$3;-><init>(Lcom/android/server/am/UserController$Injector;Ljava/util/concurrent/CountDownLatch;)V

    .line 4185
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 4186
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->lockDeviceNow()V

    .line 4188
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4194
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->unregisterScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 4195
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 4189
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Keyguard is not shown in 20 seconds"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4192
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4194
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->unregisterScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 4195
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4196
    throw v1
.end method

.method public onSystemUserVisibilityChanged(Z)V
    .locals 0

    .line 4158
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->onSystemUserVisibilityChanged(Z)V

    return-void
.end method

.method public onUserStarting(I)V
    .locals 1

    .line 4154
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    return-void
.end method

.method public reportCurWakefulnessUsageEvent()V
    .locals 0

    .line 4091
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->reportCurWakefulnessUsageEvent()V

    return-void
.end method

.method public reportGlobalUsageEvent(I)V
    .locals 0

    .line 4087
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    return-void
.end method

.method public sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    .locals 9

    .line 3991
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7581

    .line 3990
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3992
    new-instance v0, Lcom/android/server/am/UserController$Injector$1;

    iget-object v4, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V

    .line 3997
    invoke-virtual {v0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    return-void
.end method

.method public showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 9

    .line 4069
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    .line 4070
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    .line 4074
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4078
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    .line 4079
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v2, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4081
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 4082
    invoke-virtual {v1, p5}, Lcom/android/server/am/UserSwitchingDialog;->show(Ljava/lang/Runnable;)V

    .line 4083
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startHomeActivity(ILjava/lang/String;)V
    .locals 0

    .line 4019
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    return-void
.end method

.method public startPersistentApps(I)V
    .locals 0

    .line 4048
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    return-void
.end method

.method public startUserWidgets(I)V
    .locals 2

    .line 4023
    const-class p0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p0, :cond_0

    .line 4027
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetManagerInternal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public systemServiceManagerOnUserCompletedEvent(II)V
    .locals 0

    .line 3946
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemServiceManager;->onUserCompletedEvent(II)V

    return-void
.end method

.method public systemServiceManagerOnUserStopped(I)V
    .locals 1

    .line 3936
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->onUserStopped(I)V

    .line 3939
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3940
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onCleanupUser(I)V

    :cond_0
    return-void
.end method

.method public taskSupervisorRemoveUser(I)V
    .locals 0

    .line 4095
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeUser(I)V

    return-void
.end method

.method public taskSupervisorResumeFocusedStackTopActivity()V
    .locals 1

    .line 4103
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    return-void
.end method

.method public taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z
    .locals 0

    .line 4099
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result p0

    return p0
.end method

.method public updateUserConfiguration()V
    .locals 0

    .line 4034
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->updateUserConfiguration()V

    return-void
.end method
