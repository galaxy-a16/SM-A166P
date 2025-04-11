.class public Lcom/android/server/wm/MultiWindowSupportPolicyController;
.super Ljava/lang/Object;
.source "MultiWindowSupportPolicyController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;


# direct methods
.method public static synthetic $r8$lambda$HDExgUqjYZ_Jh6EUWHO3MvvLrzs(Lcom/android/server/wm/MultiWindowSupportPolicyController;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->lambda$updateAllTasksLocked$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    new-instance v0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    .line 73
    new-instance v0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$BlockListRepository;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$BlockListRepository;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    return-void
.end method

.method public static containsIgnoreNonResizableMetaData(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "com.samsung.android.multiwindow.ignore.nonresizable.setting"

    .line 283
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic lambda$updateAllTasksLocked$0(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAllowPackage(Ljava/lang/String;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez p0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public addBlockPackage(Ljava/lang/String;)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez p0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public final checkSupportPolicyLocked(ILjava/lang/String;)I
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const v1, -0x200001

    const v2, -0x100001

    if-eqz v0, :cond_0

    and-int p0, p1, v2

    and-int/2addr p0, v1

    return p0

    .line 123
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    and-int/2addr p1, v2

    and-int/2addr p1, v1

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isAllowListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x100000

    :goto_0
    or-int/2addr p1, p0

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isBlocklistApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x200000

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[MultiWindowSupportPolicyController]"

    .line 83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getAllowAppList()Ljava/util/List;
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez p0, :cond_0

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->getCopiedPackageList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBlocklistAppList()Ljava/util/List;
    .locals 1

    .line 254
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez p0, :cond_0

    .line 255
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->getCopiedPackageList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 178
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_3

    .line 184
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 186
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 187
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const-wide/16 v6, 0x80

    .line 186
    invoke-interface {v3, v4, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 189
    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    throw p0

    .line 192
    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result v2

    .line 199
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 201
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 202
    invoke-virtual {p0, v4, v2, p1, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    .line 204
    :cond_3
    monitor-exit v1

    return v0

    :catchall_1
    move-exception p0

    .line 205
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_3
    return v0
.end method

.method public initialize()V
    .locals 0

    .line 0
    return-void
.end method

.method public isAllowListApp(Ljava/lang/String;)Z
    .locals 1

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->containsPackage(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBlocklistApp(Ljava/lang/String;)Z
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->containsPackage(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 274
    :cond_0
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 275
    invoke-static {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->containsIgnoreNonResizableMetaData(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_1
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->containsIgnoreNonResizableMetaData(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public removeAllowPackage(Ljava/lang/String;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez p0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public removeBlockPackage(Ljava/lang/String;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez p0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public removeFromDeferredBlockListIfNeeedLocked(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 261
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;

    if-nez v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository;->removeDeferredPackages(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/high16 p0, 0x100000

    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/high16 p0, 0x200000

    and-int/2addr p0, p2

    if-eqz p0, :cond_3

    .line 157
    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0

    :cond_3
    if-eqz p3, :cond_4

    return v0

    .line 166
    :cond_4
    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0
.end method

.method public updateAllTasksLocked()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 95
    new-instance v2, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSupportPolicyLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 103
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mIgnoreDevSettingForNonResizable:Z

    .line 105
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return-void
.end method

.method public updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    .line 113
    :cond_0
    iget-object p2, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 114
    :goto_0
    iget v0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    return-void
.end method
