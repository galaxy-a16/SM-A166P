.class public abstract Lcom/android/server/am/PreBootBroadcaster;
.super Landroid/content/IIntentReceiver$Stub;
.source "PreBootBroadcaster.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mIndex:I

.field public final mIntent:Landroid/content/Intent;

.field public final mProgress:Lcom/android/internal/util/ProgressReporter;

.field public final mQuiet:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTargets:Ljava/util/List;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/am/PreBootBroadcaster;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V
    .locals 4

    .line 70
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    .line 142
    new-instance v0, Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iput p2, p0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    .line 73
    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    .line 74
    iput-boolean p4, p0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    .line 76
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const p4, 0x2000100

    .line 77
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p4, 0x100000

    .line 80
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 79
    invoke-virtual {p1, p3, p4, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    return-void
.end method

.method public sendNext()V
    .locals 25

    move-object/from16 v0, p0

    .line 84
    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v1, v2, :cond_0

    .line 85
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    return-void

    .line 90
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PreBootBroadcaster"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is no longer running; skipping remaining receivers"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PreBootBroadcaster;->onFinished()V

    return-void

    .line 97
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mQuiet:Z

    if-nez v1, :cond_2

    .line 98
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 101
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    iget v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 102
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 104
    iget-object v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    if-eqz v3, :cond_3

    .line 105
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 107
    iget-object v3, v0, Lcom/android/server/am/PreBootBroadcaster;->mProgress:Lcom/android/internal/util/ProgressReporter;

    iget v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mIndex:I

    iget-object v5, v0, Lcom/android/server/am/PreBootBroadcaster;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10401ac

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 108
    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    :cond_3
    const-string v1, "PreBootBroadcaster"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre-boot of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    .line 114
    iget-object v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 117
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x2710

    :goto_0
    move-wide v4, v1

    .line 121
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v7, 0xc9

    const-string v8, ""

    move-object v3, v1

    .line 122
    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 125
    iget-object v15, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v15

    .line 126
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/PreBootBroadcaster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/am/PreBootBroadcaster;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 127
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    sget v19, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v20, 0x3e8

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    iget v1, v0, Lcom/android/server/am/PreBootBroadcaster;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v23, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p0

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    .line 126
    :try_start_1
    invoke-virtual/range {v1 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 130
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v24, v15

    :goto_1
    :try_start_2
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
