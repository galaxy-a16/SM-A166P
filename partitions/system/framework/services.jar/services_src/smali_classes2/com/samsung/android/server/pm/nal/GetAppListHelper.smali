.class public Lcom/samsung/android/server/pm/nal/GetAppListHelper;
.super Ljava/lang/Object;
.source "GetAppListHelper.java"


# instance fields
.field public final EXEMPTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.wearable.app.cn"

    .line 44
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->EXEMPTED_PACKAGES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkCallingGetAppList(Landroid/content/Context;IZLjava/util/function/Function;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    return p0

    .line 126
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const-string v0, "com.samsung.android.permission.GET_APP_LIST"

    .line 128
    invoke-static {v0, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 132
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 133
    array-length p4, p2

    if-nez p4, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    aget-object p2, p2, p0

    .line 138
    const-class p4, Landroid/permission/PermissionManager;

    .line 139
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionManager;

    .line 141
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 140
    invoke-virtual {p1, p2, v0, p3}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    .line 150
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_3
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw p0

    :cond_4
    return v2
.end method

.method public final containsInAllowlist(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->EXEMPTED_PACKAGES:[Ljava/lang/String;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final getAppTasks(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 212
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 215
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 217
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get app tasks for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GetAppListHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageNameOfPid(I)Ljava/lang/String;
    .locals 0

    .line 162
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskIdOfVisibleActivity(Ljava/util/List;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 185
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    .line 186
    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    iget-boolean v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iget p0, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    return p0

    .line 194
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$AppTask;

    .line 195
    invoke-virtual {p1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 196
    iget-boolean v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v1, :cond_3

    .line 197
    iget p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    return p0

    :cond_4
    return v0
.end method

.method public final hasPackageVisibleActivity(Ljava/util/List;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 171
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 172
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public isExemptedPackage(ILcom/android/server/pm/SettingBase;)Z
    .locals 3

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    return p1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v1

    .line 61
    :cond_2
    instance-of v0, p2, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 62
    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    .line 64
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 65
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 67
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 68
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->containsInAllowlist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 73
    :cond_4
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    move-object v2, p0

    goto :goto_0

    .line 75
    :cond_5
    instance-of v0, p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v0, :cond_6

    .line 76
    move-object v2, p2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 79
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->containsInAllowlist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    .line 84
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object p0

    const-string p2, "com.samsung.android.permission.GET_APP_LIST"

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    :cond_8
    :goto_1
    return v1
.end method

.method public final isLauncherIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string p1, "android.intent.category.CAR_LAUNCHER"

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestGetAppListPermIfNeeded(Landroid/content/Context;II)V
    .locals 2

    .line 101
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->getPackageNameOfPid(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->hasPackageVisibleActivity(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->getTaskIdOfVisibleActivity(Ljava/util/List;)I

    move-result v0

    .line 108
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 107
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->showGetAppListConfirmDialog(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to request GET_APP_LIST for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GetAppListHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final showGetAppListConfirmDialog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 5

    if-gez p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p0, "GetAppListHelper"

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request GET_APP_LIST permission for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.samsung.android.permission.GET_APP_LIST"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 230
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.permissioncontroller"

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 233
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10040000

    .line 234
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    new-instance p2, Landroid/app/ActivityOptions;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p2, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p2, v1, v4}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 239
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 240
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 241
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 240
    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
