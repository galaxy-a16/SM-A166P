.class public Lcom/android/server/wm/MultiInstanceController;
.super Ljava/lang/Object;
.source "MultiInstanceController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final LAUNCH_SINGLE_INSTANCE_PER_TASK_MAX_COUNT:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;


# direct methods
.method public static synthetic $r8$lambda$U62VRKOjPGJbeczgf2h0PHbmXcw(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiInstanceController;->lambda$findTasks$2(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r5pNCbP6EtwxqeZqxMJtA0HM0Wc(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/MultiInstanceController;->lambda$findAliasManagedTaskInPackage$1(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$urIaLggUPOOHipA9Csy7TdIvasU(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiInstanceController;->lambda$adjustStartIntents$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MultiInstanceController;->LAUNCH_SINGLE_INSTANCE_PER_TASK_MAX_COUNT:I

    new-instance v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    invoke-direct {v0}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static synthetic lambda$adjustStartIntents$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 2

    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide p0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$findAliasManagedTaskInPackage$1(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isAliasManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$findTasks$2(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 2

    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide p0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    filled-new-array {v2, v2, v2}, [Landroid/content/Intent;

    move-result-object v3

    filled-new-array {v2, v2, v2}, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v4

    filled-new-array {v2, v2, v2}, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [I

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v15

    const/4 v2, 0x7

    if-ne v15, v2, :cond_4

    new-instance v2, Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v15

    invoke-direct {v2, v15}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/PendingIntentRecord;->getUserId()I

    move-result v16

    if-ne v2, v14, :cond_1

    aput-object v15, v3, v8

    aput v16, v6, v8

    aput-object v11, v4, v8

    goto :goto_1

    :cond_1
    if-ne v2, v13, :cond_2

    aput-object v15, v3, v14

    aput v16, v6, v14

    aput-object v11, v4, v14

    goto :goto_1

    :cond_2
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v14, :cond_3

    if-ne v2, v12, :cond_3

    aput-object v15, v3, v13

    aput v16, v6, v13

    aput-object v11, v4, v13

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v2

    if-eqz v2, :cond_5

    aput-object v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    :cond_5
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    new-array v2, v9, [Lcom/android/server/wm/Task;

    new-array v7, v9, [Lcom/android/server/wm/ActivityRecord;

    new-array v10, v9, [I

    aput v14, v10, v8

    aput v13, v10, v14

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v11, :cond_7

    if-le v9, v13, :cond_7

    aput v12, v10, v13

    :cond_7
    iget-object v11, v0, Lcom/android/server/wm/MultiInstanceController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    move v12, v8

    :goto_3
    if-ge v12, v9, :cond_a

    :try_start_0
    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    aget v15, v10, v12

    invoke-virtual {v13, v15}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v13

    aput-object v13, v2, v12

    if-eqz v13, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_8

    aget-object v13, v2, v12

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v15

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    aput-object v13, v7, v12

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_a
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    new-array v2, v9, [Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v8

    move v12, v11

    :goto_5
    if-ge v11, v9, :cond_e

    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v17, v3, v11

    const/16 v18, 0x0

    aget v19, v6, v11

    const/16 v20, 0x0

    iget v15, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v8, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    move-object/from16 v16, v13

    move/from16 v21, v15

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_d

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_d

    const-string v15, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v8, v2, v11

    aget-object v13, v7, v11

    if-eqz v13, :cond_d

    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    aget-object v8, v7, v11

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    aput-object v15, v3, v11

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v8

    aget-object v13, v4, v11

    invoke-interface {v8, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    aget-object v8, v5, v11

    if-eqz v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v8

    aget-object v13, v5, v11

    invoke-interface {v8, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v15, 0x0

    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_18

    aget-object v4, v3, v1

    if-eqz v4, :cond_17

    aget-object v4, v2, v1

    if-nez v4, :cond_f

    goto/16 :goto_e

    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aget-object v5, v2, v1

    aget v7, v6, v1

    invoke-virtual {v0, v5, v7, v4}, Lcom/android/server/wm/MultiInstanceController;->findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V

    new-instance v5, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    :goto_9
    if-ltz v5, :cond_13

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    if-ne v8, v14, :cond_12

    :cond_11
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    :goto_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_13
    move-object v7, v15

    :goto_b
    if-nez v7, :cond_15

    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_15

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v11

    const/4 v13, 0x5

    if-ne v11, v13, :cond_14

    move-object v7, v8

    goto :goto_d

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_15
    :goto_d
    if-nez v7, :cond_16

    goto :goto_e

    :cond_16
    aget-object v4, v3, v1

    iget v5, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    aget-object v4, v3, v1

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget v4, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_18
    if-eq v12, v9, :cond_19

    move v8, v14

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    :goto_f
    return v8

    :goto_10
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_10
.end method

.method public adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [Landroid/content/Intent;

    move-result-object v2

    filled-new-array {v1, v1, v1}, [Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_0

    new-instance v10, Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v10

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v12}, Lcom/android/server/am/PendingIntentRecord;->getUserId()I

    if-ne v10, v9, :cond_2

    aput-object v11, v2, v8

    aput-object v5, v3, v8

    goto :goto_0

    :cond_2
    if-ne v10, v7, :cond_3

    aput-object v11, v2, v9

    aput-object v5, v3, v9

    goto :goto_0

    :cond_3
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v8, :cond_0

    if-ne v10, v6, :cond_0

    aput-object v11, v2, v7

    aput-object v5, v3, v7

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    new-array v5, v4, [Lcom/android/server/wm/Task;

    new-array v10, v4, [Lcom/android/server/wm/Task;

    new-array v11, v4, [I

    aput v9, v11, v8

    aput v7, v11, v9

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v12, :cond_5

    aput v6, v11, v7

    :cond_5
    move v6, v8

    :goto_1
    if-ge v6, v4, :cond_8

    iget-object v7, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    aget v12, v11, v6

    invoke-virtual {v7, v12}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v7

    aput-object v7, v5, v6

    if-eqz v7, :cond_6

    invoke-virtual {v7, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v7, v5, v6

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_2

    :cond_6
    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_7

    aput-object v7, v10, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    new-array v5, v4, [Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v8

    move v11, v7

    :goto_3
    if-ge v7, v4, :cond_c

    aget-object v12, v2, v7

    if-nez v12, :cond_9

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_9
    iget-object v13, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13, v12}, Lcom/android/server/wm/MultiInstanceController;->getLaunchModeSingleInstancePerTask(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    new-instance v15, Lcom/android/server/wm/ActivityRecord$Builder;

    iget-object v9, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v15, v9}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    const/4 v15, -0x1

    invoke-virtual {v9, v15}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    aget-object v15, v2, v7

    invoke-virtual {v9, v15}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    iget-object v12, v0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/wm/ActivityRecord$Builder;->setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    aget-object v12, v2, v7

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    move v12, v8

    :goto_5
    invoke-virtual {v9, v12}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    aput-object v9, v5, v7

    aget-object v12, v10, v7

    if-eqz v12, :cond_b

    invoke-virtual {v0, v9, v12}, Lcom/android/server/wm/MultiInstanceController;->hasMatchedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_b

    aget-object v9, v10, v7

    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, v2, v7

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v9

    aget-object v12, v3, v7

    invoke-interface {v9, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v7, v8

    :goto_7
    if-ge v7, v4, :cond_1a

    aget-object v9, v2, v7

    if-eqz v9, :cond_19

    aget-object v9, v5, v7

    if-nez v9, :cond_d

    goto/16 :goto_e

    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aget-object v10, v2, v7

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    aget-object v12, v5, v7

    invoke-virtual {v0, v12, v9}, Lcom/android/server/wm/MultiInstanceController;->findTasks(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    :goto_8
    if-ltz v10, :cond_13

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    iget v13, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-static {v13}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    goto :goto_a

    :cond_10
    const/4 v14, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v14, 0x1

    :cond_12
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_13
    const/4 v14, 0x1

    move-object v12, v1

    :goto_a
    if-nez v12, :cond_15

    move v10, v8

    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_15

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Task;

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v15

    const/4 v1, 0x5

    if-ne v15, v1, :cond_14

    move-object v12, v13

    goto :goto_c

    :cond_14
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto :goto_b

    :cond_15
    :goto_c
    if-nez v12, :cond_17

    move v1, v8

    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_17

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_16
    move-object v12, v10

    :cond_17
    if-nez v12, :cond_18

    aget-object v1, v2, v7

    const/high16 v9, 0x8000000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_f

    :cond_18
    aget-object v1, v2, v7

    iget v9, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    iget v1, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    :goto_e
    const/4 v14, 0x1

    :goto_f
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_1a
    const/4 v14, 0x1

    if-eq v11, v4, :cond_1b

    move v8, v14

    :cond_1b
    return v8
.end method

.method public allowMultipleTask(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiInstanceController;->findTasks(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    if-nez p4, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-nez p0, :cond_5

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    :cond_2
    move p0, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p4, 0x0

    move-object v1, p4

    move v3, v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v5

    if-ne v5, p3, :cond_7

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    return v2

    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v1, :cond_c

    move-object v1, v4

    goto :goto_3

    :cond_8
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    return v2

    :cond_9
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_a

    if-nez p4, :cond_c

    move-object p4, v4

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    if-nez p0, :cond_e

    if-eqz p4, :cond_e

    goto :goto_4

    :cond_e
    move-object p4, p0

    :goto_4
    if-eqz p4, :cond_f

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, p4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    return v2

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x5

    if-ge p0, p2, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_5

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_5
    if-eqz v1, :cond_12

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    :cond_12
    return v2
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    const-string p0, "[MultiInstanceController]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final findTasks(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    new-instance p0, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public getLaunchModeSingleInstancePerTask(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-wide/32 v0, 0x10000

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-object p2

    :cond_2
    return-object p1
.end method

.method public hasMatchedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
