.class public Lcom/android/server/am/AppRestrictionController$Injector;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

.field public mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

.field public mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

.field public mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field public mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

.field public mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public final mContext:Landroid/content/Context;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3164
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 3318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 3188
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 3189
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 3191
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 3279
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;
    .locals 0

    .line 3287
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    return-object p0
.end method

.method public getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;
    .locals 0

    .line 3271
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    return-object p0
.end method

.method public getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .locals 1

    .line 3213
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-nez v0, :cond_0

    .line 3214
    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 3217
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppHibernationInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object p0
.end method

.method public getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;
    .locals 0

    .line 3275
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 3199
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 3200
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3202
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;
    .locals 0

    .line 3195
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    return-object p0
.end method

.method public getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 1

    .line 3206
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_0

    .line 3207
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 3209
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    return-object p0
.end method

.method public getAppStateTracker()Lcom/android/server/AppStateTracker;
    .locals 1

    .line 3221
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v0, :cond_0

    .line 3222
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 3224
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 3168
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDataSystemDeDirectory(I)Ljava/io/File;
    .locals 0

    .line 3314
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 3228
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 3250
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 3251
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3253
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 3239
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 3240
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3242
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 1

    .line 3295
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    .line 3297
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 3298
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3300
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    .line 3302
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 3305
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRoleManager()Landroid/app/role/RoleManager;
    .locals 2

    .line 3257
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    if-nez v0, :cond_0

    .line 3258
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 3260
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 3264
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 3265
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3267
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;
    .locals 0

    .line 3283
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 3232
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 3233
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3235
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V
    .locals 3

    .line 3172
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 3173
    new-instance v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    .line 3174
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 3175
    new-instance v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 3176
    new-instance v0, Lcom/android/server/am/AppMediaSessionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 3177
    new-instance v0, Lcom/android/server/am/AppPermissionTracker;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    .line 3178
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryTracker:Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3179
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppBatteryExemptionTracker:Lcom/android/server/am/AppBatteryExemptionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3180
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppPermissionTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppBroadcastEventsTracker;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/am/AppBroadcastEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3184
    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppBindServiceEventsTracker;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/AppBindServiceEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isTest()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 3310
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
