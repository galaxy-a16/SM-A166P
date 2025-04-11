.class public Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mNmi:Lcom/android/server/net/NetworkManagementInternal;

.field public mUserController:Lcom/android/server/am/UserController;


# direct methods
.method public static bridge synthetic -$$Nest$fputmUserController(Lcom/android/server/am/ActivityManagerService$Injector;Lcom/android/server/am/UserController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mUserController:Lcom/android/server/am/UserController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23095
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ensureHasNetworkManagementInternal()Z
    .locals 1

    .line 23247
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    if-nez v0, :cond_0

    .line 23248
    const-class v0, Lcom/android/server/net/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    .line 23250
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActiveServices;
    .locals 0

    .line 23243
    new-instance p0, Lcom/android/server/am/ActiveServices;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object p0
.end method

.method public getAppOpsService(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/appop/AppOpsService;
    .locals 1

    .line 23104
    new-instance v0, Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/server/appop/AppOpsService;-><init>(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method

.method public getBatteryStatsService()Lcom/android/server/am/BatteryStatsService;
    .locals 3

    .line 23235
    new-instance v0, Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    .line 23236
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 23099
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDisplayIdsForStartingVisibleBackgroundUsers()[I
    .locals 11

    .line 23130
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ActivityManager"

    if-nez v0, :cond_0

    const-string p0, "getDisplayIdsForStartingVisibleBackgroundUsers(): not supported"

    .line 23131
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 23136
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 23138
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 23142
    array-length v3, v0

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 23147
    :cond_1
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 23148
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    .line 23154
    array-length v3, v0

    .line 23155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 23156
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p0, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "displayManager (%s) has %d displays (%s), but none has id DEFAULT_DISPLAY (%d)"

    .line 23154
    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 23161
    :cond_4
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result p0

    .line 23162
    array-length v3, v0

    if-nez p0, :cond_5

    add-int/lit8 v3, v3, -0x1

    .line 23166
    :cond_5
    new-array v5, v3, [I

    .line 23169
    array-length v6, v0

    move v7, v4

    move v8, v7

    :goto_2
    if-ge v7, v6, :cond_8

    aget-object v9, v0, v7

    .line 23170
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    .line 23172
    invoke-virtual {v9}, Landroid/view/Display;->isValid()Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez p0, :cond_6

    if-eqz v10, :cond_7

    :cond_6
    add-int/lit8 v9, v8, 0x1

    .line 23174
    aput v10, v5, v8

    move v8, v9

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    if-nez v8, :cond_c

    const-string v3, "fw.display_ids_for_starting_users_for_testing_purposes"

    .line 23184
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz p0, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    if-lez v4, :cond_b

    .line 23188
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers(): no valid display found, but returning %d as set by property %s"

    .line 23187
    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23190
    filled-new-array {v4}, [I

    move-result-object p0

    return-object p0

    .line 23193
    :cond_b
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers(): no valid display on %s"

    .line 23192
    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_c
    if-eq v8, v3, :cond_d

    .line 23198
    new-array p0, v8, [I

    .line 23199
    invoke-static {v5, v4, p0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_d
    return-object v5

    :cond_e
    :goto_3
    const-string v0, "displayManager (%s) returned no displays"

    .line 23143
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getProcessList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessList;
    .locals 0

    .line 23228
    new-instance p0, Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList;-><init>()V

    return-object p0
.end method

.method public getUiHandler(Lcom/android/server/am/ActivityManagerService;)Landroid/os/Handler;
    .locals 0

    .line 23108
    new-instance p0, Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object p0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .locals 1

    .line 23112
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->ensureHasNetworkManagementInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23113
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementInternal;->isNetworkRestrictedForUid(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z
    .locals 0

    .line 23220
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUserVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method
